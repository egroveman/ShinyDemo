library(shiny)

shinyUI(fluidPage(
    titlePanel("Car efficiency estimation"),
    
    sidebarLayout(
        sidebarPanel(
            numericInput("value", 
                         label = h3("How much does the car weigh (kg)"), 
                         value = 1000)
        ),
        
        mainPanel(
            p("This Shiny app shows how (very) simple linear regression works",
              " using the mtcars dataset",
              ". It's extremely simple. It just fits a regression of ",
              "miles per gallon vs wieght",
              ", just enter the weight on the left to see mpg."),
            "Using simple linear regression, the car should get:",
            textOutput("text1"),
            "miles per gallon"
        )
    )
))