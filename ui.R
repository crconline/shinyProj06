library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("The first CRC shiny app"),
    
    # Sidebar with a selected input
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "variable",
                    label = "Choose a variable:",
                    choices = c("Horsepower" = "hp",
                                "Miles per Gallon" = "mpg",
                                "Number of Carburetors" = "carb"),
                    selected = "hp")
        ),
        
        # Show a plot and a summary
        mainPanel(
            plotOutput("carsPlot"),
            verbatimTextOutput("carsSummary")
        )
    )
))
