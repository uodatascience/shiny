#UI.R
#loading shiny library
library(shiny)
library(ggplot2) # for diamonds data set


shinyUI(fluidPage(
    
    # fluid page for dynamically adapting to screens of different resolutions.
    titlePanel("Diamonds Dataset"),
    sidebarLayout(
        sidebarPanel(
            # use drop downs to select the variables
            selectInput("xin", "Select column of diamonds dataset to plot on X axis:",
                         list("carat" = 'a', 
                              "depth" = 'b', 
                              "table" = 'c', 
                              "price" = 'd', 
                              "x" = 'e', 
                              "y" = 'f', 
                              "z" = 'g')),
            selectInput("yin", "Select column of diamonds dataset to plot on Y axis:",
                        list("carat" = 'h', 
                             "depth" = 'i', 
                             "table" = 'j', 
                             "price" = 'k', 
                             "x" = 'l', 
                             "y" = 'm', 
                             "z" = 'n'))
            ),
        mainPanel(
            plotOutput("diamonds_plot")
        )
    )
))


# to run, use runApp(display.mode = 'showcase')