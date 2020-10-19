library(shiny)


shinyUI(fluidPage(
    titlePanel("All thing great and small"),
    sidebarLayout(
        sidebarPanel(
             h3("let's slide stuff"),
             sliderInput("slider"," slide it",0,500,40)
           ),
       
        mainPanel(
            h3("this is the slider value"),
            strong(em("this is a neat app")),
            textOutput("text")
            )
        )
    )
)