library(shiny)
library(randomForest)

data(iris)
mod_rf <- randomForest(Species~.,data=iris,ntrees = 8)

test<-iris[1,1:4]



shinyServer(function(input, output,session) {

    output$text1 <- renderText({ 
        paste("Sepal Length: ", input$text_sepal_length, "(cm),",
              "Sepal Width: ", input$text_sepal_width, "(cm),",
              "Petal Length: ", input$text_petal_length, "(cm),",
              "Petal Width: ", input$text_petal_width, "(cm),")
    })
    
    species<-reactive({
        test[1,1]<-input$text_sepal_length
        test[1,2]<-input$text_sepal_width
        test[1,3]<-input$text_petal_length
        test[1,4]<-input$text_petal_width
        pred_test<-predict(mod_rf,newdata = test) #results of test
        as.character(pred_test)
            })
    
    output$text2 <- renderText({ 
        species()
    })
    
    selectedData <- reactive({
        iris[, c(input$xcol, input$ycol)]
    })
    
    clusters <- reactive({
        kmeans(selectedData(), input$clusters)
    })
    
    output$plot1 <- renderPlot({
        palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
                  "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
        
        par(mar = c(5.1, 4.1, 0, 1))
        plot(selectedData(),
             col = clusters()$cluster,
             pch = 20, cex = 3)
        points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
    })

}
)
