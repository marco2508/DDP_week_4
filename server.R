#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white', height = 100, width = 200)

    })
    
    output$pointPlot <- renderPlot({
        set.seed( 2020-08-16)
        number_of_points <- input$numeric
        minX <- input$sliderX[1]
        maxX <- input$sliderX[2]
        minY <- input$sliderY[1]
        maxY <- input$sliderY[2]
        
        dataX <- runif( number_of_points, minX, maxX)
        dataY <- runif( number_of_points, minY, maxY)
        
        title = "week 4 part 1"
        output$text = renderText( number_of_points )
        
        plot( dataX, dataY, xlab = "X axis", ylab = "Y axis", main = title,)
    })
    
    output$table <- renderTable({
        iris
    })

})
