library(shiny)


shinyUI(fluidPage(
    titlePanel("How will the US population increase based on recent population trajectory from 1900"),
    sidebarLayout(
        sidebarPanel(
             h3("Use the slider to pick the forcast year of choice"),
             
             sliderInput("slider"," slide it",1970,2300,2019)
           ),
       
        mainPanel(
            h3("This is the forcast population! Based on the year selected!"),
            h3("(The base linear regression of the log of the population value has an adjusted R-squared of 0.9944)"),
            strong(em("This result is the forcast population in millions")),
            h1(textOutput("text")),
            plotOutput("plot")
            )
        )
    )
)