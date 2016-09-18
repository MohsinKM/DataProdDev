shinyUI(fluidPage(
    tags$style(type = "text/css","label { font-size: 24px; }"),
    titlePanel(h1("Predicting Species")),
    
    sidebarLayout(position="left",
        sidebarPanel(
            h2("Please enter following information"),
            textInput("text_sepal_length", label = h3("Sepal Length (cm)"), 
                      value = "1.00"),
            textInput("text_sepal_width", label = h3("Sepal Width (cm)"), 
                      value = "1.00"),
            textInput("text_petal_length", label = h3("Petal Length (cm)"), 
                      value = "1.00"),
            textInput("text_petal_width", label = h3("Petal Width (cm)"), 
                      value = "1.00"),
            h2("Click for prediction"),
            submitButton("Predict"),
            h2("Clustering IRIS data"),
            selectInput('xcol', 'X Variable', names(iris)),
            selectInput('ycol', 'Y Variable', names(iris),
                        selected=names(iris)[[2]]),
            numericInput('clusters', 'Cluster count', 3,
                         min = 1, max = 9),
            submitButton("Plot")
            

        ),
        mainPanel(
            h2("Flower informaiton you entered:"),
            h3(textOutput("text1")),
            h2("Based on above information predicted flower
              species is..........."),
            h1(textOutput("text2")),
            h2(textOutput("text3")),
            h2("====================================================="),
            h2("Cluster plot"),
            plotOutput('plot1')
        )
    )
))