# DATR

### This app visualizes Array Expression Datasets by using the [shiny framework](https://shiny.rstudio.com).

---

### Datamining with R

---


## Installation


##### Download the source code from GitHub to run the app on a local device.
     https://github.com/LukasH411/Datamining_mit_R

After downloading the code, you should check if you have all packages installed that are needed to run the app.
The packages are:

[shiny](https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/)

[BiocManager](https://www.bioconductor.org/install/)

[golubEsets](http://bioconductor.org/packages/release/data/experiment/html/golubEsets.html)
[shinyWidgets](https://cran.r-project.org/web/packages/shinyWidgets/index.html)




***> library(shiny)

***> runApp("DATR_SL")
 

This will start the app in RStudio.




In the app you can find two selection boxes, one slider and a dendrogram. 
With the slider the number of genes that should be shown in the heatmap can be regulated.
The default value are 50 genes.

In the first selection box the user is able to choose the clustering method to be used in the dendrogram.Possible values are: Single, Complete, Average (= UPGMA), Mcquitty (= WPGMA), Median (= WPGMC) and Centroid (= UPGMC).

The second selection box allows to choose a distance measure which will be used in the dendrogram. Availeable distance measures are: Euclidean, Maximum, Manhattan, Canberra, Binary and Minkowski.


## About the App

Microarray data is often huge and hard to interprete. This app is designed to preprocces and visualize the enormous ammount of data to make it easier accessible.
The data in this app are from Todd Golub. It is accessible via the bioconductor webpage. In the Golub experiment were 38 patients which were testet on their gene expression of 7129 genes. 

#### Author
Lukas Horne

---


