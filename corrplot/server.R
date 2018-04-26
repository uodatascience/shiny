#SERVER.R
library(shiny)
library(ggplot2) # to get the diamonds data set

#writing server function
shinyServer(function(input, output) {
    
    # getting output distPlot in ui.r as output$distPlot
    output$diamonds_plot <- renderPlot({
        
        # getting input xin in ui.r as input$xin
        if (input$xin == 'a') {
            col_x <- 1
        }
        
        if (input$xin == 'b') {
            col_x <- 5
        }
        
        if (input$xin == 'c') {
            col_x <- 6
        }
        
        if (input$xin == 'd') {
            col_x <- 7
        }
        
        if (input$xin == 'e') {
            col_x <- 8
        }
        
        if (input$xin == 'f') {
            col_x <- 9
        }
        
        if (input$xin == 'g') {
            col_x <- 10
        }
        
        x    <- diamonds[, col_x]
        
        # getting input yin in ui.r as input$yin
        
        
        if (input$yin == 'h') {
            col_y <- 1
        }
        
        if (input$yin == 'i') {
            col_y <- 5
        }
        
        if (input$yin == 'j') {
            col_y <- 6
        }
        
        if (input$yin == 'k') {
            col_y <- 7
        }
        
        if (input$yin == 'l') {
            col_y <- 8
        }
        
        if (input$yin == 'm') {
            col_y <- 9
        }
        
        if (input$yin == 'n') {
            col_y <- 10
        }
        
        y    <- diamonds[, col_y]
        #producing correlation plot as output
        ggplot(diamonds, aes(x = x, y = y), environment = environment()) + 
            geom_point() +
            geom_smooth(method = lm) +
            xlab(colnames(x)) + ylab(colnames(y))
    })
})
