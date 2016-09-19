## Introduction

This is a class project for Data product development in courseera. 

This shiny app is to predict "iris" flower "species" based on "random forest" algorithm. Once, attributes of flower are given this app will predict the species. This app also plots k means cluster of "iris" R- dataset.

Please locate shiny folder for further information. 



## Data

In R-data set "iris" has been used in this project.


## Input:
Four attributes of flower should be given as input. Once input are typed in text box on left panel user should hit "predict" button to see predicted "species". Four attributes are
1.	Sepal Length
2.	Sepal Width
3.	Petal Length
4.	Petal Width
All the length is in centimeter. Beside these four numeric input users will be able to choose axis of cluster plot from drop down menu. First drop down menu is for x axis and second one for y axis. Cluster number can be chosen from a numeric input either by typing an integer or just by clicking up/down arrow. 

## Output: 
Once "predict" button is clicked shiny server will use "random forest" machine learning algorithm on "iris" data set for modeling. Based on model parameter prediction will be made on user given information. On right panel user will see what information he provided along with predicted result. 
At the bottom of prediction K-means cluster is plotted based on user given information about x and y axis. Number of cluster is based on the numeric input of cluster numbers. 

1. Shiny app:[https://kmmohsin.shinyapps.io/iris_pred_app_deploy/][1]
2. Git Repo: [https://github.com/MohsinKM/DataProdDev.git] [2]
3. Rpresent: [http://rpubs.com/Mohsin/iris_spec_predicion] [3]
[1]: https://kmmohsin.shinyapps.io/iris_pred_app_deploy/
 "Title"
[2]: https://github.com/MohsinKM/DataProdDev.git 
[3]: http://rpubs.com/Mohsin/iris_spec_predicion



Author: K.M. Mohsin,
mohsin.eee@gmail.com, 
Ph.D. candidate,
Lousisiana State University. 


