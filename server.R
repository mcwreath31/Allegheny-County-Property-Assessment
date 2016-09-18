##Server
library(shiny)
library(ggplot2)

post <- read.csv(file = "./Post.csv", header = TRUE)
pre <- read.csv(file = "./Pre.csv", header = TRUE)


shinyServer(function(input, output) {
  
  # a large table, reative to input$show_vars
  output$mytable1 = renderDataTable({
    library(ggplot2)
    pre[, input$show_vars, drop = FALSE]
  })
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable2 = renderDataTable({
    library(ggplot2)
    post[, input$show_vars2, drop = FALSE]
  })
  
  # customize the length drop-down menu; display 5 rows per page by default
  output$mytable3 = renderDataTable({
    iris
  }, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  
})
