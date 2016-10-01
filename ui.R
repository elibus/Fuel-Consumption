library(shiny)
library(ggplot2)

data(mtcars)
mtcars$am <- as.factor(mtcars$am)
levels(mtcars$am) <- c("Auto", "Manual")

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  # Application title
  titlePanel("Fuel consumption estimation"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "hp",
        "HP:",
        min = 1,
        max = 500,
        value = mean(mtcars$hp)
      ),
      sliderInput(
        "wt",
        "Weight (tons):",
        min = 0.5,
        max = 6,
        value = mean(mtcars$wt),
        step = 0.10
      ),
      radioButtons(
        "am",
        "Transmission type:",
        choices = c("Auto" = 0 , "Manual" = 1)
      )
    ),
    
    mainPanel(plotOutput("plot"))
  )
))
