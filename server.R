library(shiny)

# Define server logic
shinyServer(function(input, output) {
  output$plot <- renderPlot({
    # New data frame for prediction
    new <- data.frame(am = as.numeric(input$am),
                      wt = input$wt,
                      hp = input$hp)

    # Prediction
    pred <-
      cbind(mtcars,
            predict(fit, new, interval = "prediction", level = 0.95))
    
    # Plot the prediction with 95% confidence internval
    ggplot(pred, aes(x = hp)) +
      labs(x="Horse Power", y="Mileage per gallon") +
      geom_ribbon(aes(ymin = lwr, ymax = upr),
                  fill = "blue",
                  alpha = 0.2) +
      geom_point(aes(y = mpg)) +
      geom_line(aes(y = fit), colour = "blue", size = 0.5)
    
  })
  
})
