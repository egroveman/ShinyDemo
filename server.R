data(mtcars)

fit <- lm(mpg ~ wt, data = mtcars)

shinyServer(function(input, output) {
    
    output$text1 <- renderText({  
        round(predict(fit, 
            newdata = data.frame(wt = input$value / 1000)), 1)
    })
    
})