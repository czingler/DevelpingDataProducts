library(shiny)
shinyServer(function(input, output) {
    
    output$text = renderText(input$slider)
    
    }   
)