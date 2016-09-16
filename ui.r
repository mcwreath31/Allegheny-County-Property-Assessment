##UI 
library(shiny)
library(ggplot2)  # for the diamonds dataset


post <- read.csv(file = "C:\\Users\\KTMcw_000\\desktop\\RE-APP\\data\\Post.csv", header = TRUE)
pre <- read.csv(file = "C:\\Users\\KTMcw_000\\desktop\\RE-APP\\data\\Pre.csv", header = TRUE)

shinyUI(pageWithSidebar(
  headerPanel('Selected Allegheny Property Assessment Data'),
  sidebarPanel(
    
    helpText('Mt. Lebanon, Bethal Park, South Park and Dormont Property Assesment Data as of 9/13/2016. The first data table summarizes 
             all property purchases in selected areas prior to 1985 and the second summaries all property purchases post 1985 with a sale price of $0 or $1.Specific information can be
             searched using the search browser and fields can be sorted by clicking on the field name.'),
    
    
    
    checkboxGroupInput('show_vars', 
                       'Select Pre 1985 Property Assessment Fields:', 
                       names(pre),
                       selected = names(pre)),
    
    
    
    
    
    checkboxGroupInput('show_vars2', 
                       'Select Post 1985 Property Assessment Fields:', 
                       names(post),
                       selected = names(post))
    
    
    
    
    
    ),
  mainPanel(
    tabsetPanel(
      tabPanel('Pre 1985',
               dataTableOutput("mytable1")),
      tabPanel('Post 1985',
               dataTableOutput("mytable2"))
      
    )
  )
  ))