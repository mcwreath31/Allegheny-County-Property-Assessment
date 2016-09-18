##Server
library(shiny)
library(ggplot2)

post <- read.csv(file = "./Post.csv", header = TRUE)
pre <- read.csv(file = "./Pre.csv", header = TRUE)


shinyServer(function(input, output) {
  
  
  output$mytable1 = renderDataTable({
    library(ggplot2)
    pre[, input$show_vars, drop = FALSE]
  })
  
  
  output$mytable2 = renderDataTable({
    library(ggplot2)
    post[, input$show_vars2, drop = FALSE]
  })
  
  
  
})
