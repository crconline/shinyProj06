library(shiny)
library(datasets)
#par(bg = "cornsilk")
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    # Expression that generates a histogram. The expression is
    # wrapped in a call to renderPlot to indicate that:
    #
    #  1) It is "reactive" and therefore should be automatically
    #     re-executed when inputs change
    #  2) Its output type is a plot
    
    output$carsPlot <- renderPlot({
        # draw the histogram of mtcars dataset
        hist(mtcars[ ,input$variable],
             main = "Histogram of mtcars variables",
             xlab = input$variable,
             col = "lavender")
    })
    
    output$carsSummary <- renderPrint({
        summary(mtcars[ ,input$variable])
    })
})
