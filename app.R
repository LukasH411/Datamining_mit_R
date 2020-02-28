library(shiny)
library(shinyWidgets)
library(golubEsets)
data("Golub_Train")
x=exprs(Golub_Train)
#einzelne plots

#tx=t(x)
#tx=tx[,2:38]
#tx=tx[names(sort(apply(tx,1,var), decreasing=TRUE)[1:50]),]

# Define UI ----
ui <- fluidPage(
  #theme = "bootstrap.min.css",
  setBackgroundColor("darkgray"),
  titlePanel("Golub Esets"),
  sidebarLayout(
    sidebarPanel(
      helpText("Adjusting the parameters."),
      selectInput("clust", h3("Clustering measure"), 
                  choices = list("Single" = "single", "Complete" = "complete",
                                 "Average" = "average","WPGMA" = "mcquitty", "WPGMC" = "median",
                                 "UPGMC" = "centroid"), selected = "average"),
      selectInput("dist", h3("Distance measure"), 
                  choices = list("Euklid" = "euclidean", "Maximum" = "maximum",
                                 "Manhattan" = "manhattan","Canberra" = "canberra", "Binary" = "binary",
                                 "Minkowski" = "minkowski"), selected = "euclidean"),
      sliderInput("num", h3("Number of genes:"),
                  min = 3, max = 100, value = 50)
    ),
    mainPanel(
     plotOutput("selected_plot")
    )
  )
)
# Define server logic ----
server <- function(input, output) {
  output$selected_plot <- renderPlot({ 
   # paste("You have selected", input$clust,"You have selected", input$dist)
    clust <- input$clust
    dist <- input$dist
    num <- input$num
    x=x[,2:38]
    x=x[names(sort(apply(x,1,var), decreasing=TRUE)[1:num]),]
    plot(hclust(dist(x,dist),method= clust))
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)