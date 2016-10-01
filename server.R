library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$plot <- renderPlot({
    new <- data.frame(am = as.numeric(input$am),
                      wt = input$wt,
                      hp = input$hp)

    pred <-
      cbind(mtcars,
            predict(fit, new, interval = "prediction", level = 0.95))
    
    ggplot(pred, aes(x = hp)) +
      geom_ribbon(aes(ymin = lwr, ymax = upr),
                  fill = "blue",
                  alpha = 0.2) +
      geom_point(aes(y = mpg)) +
      geom_line(aes(y = fit), colour = "blue", size = 0.5)
    
  })
  
})
