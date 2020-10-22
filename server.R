library(shiny)
library(tidyverse)

data("uspop")
dfpop <- data.frame(time(uspop), uspop)
names(dfpop)<- c("year","pop")
newpop<- data.frame(c(1980,1990,2000,2010),
                    c(226.5,250.1,282.2,309.3))
##  United States Census Bureau
names(newpop)<- c("year","pop")
dfnpop<- add_row(dfpop,newpop)
pop <- subset(dfnpop,dfnpop$year>1890)

shinyServer(function(input, output) {
    lmpop<- lm(log(pop)~year,pop)
   
    modpred <- reactive({
     SI <-  input$slider
     predict(lmpop,newdata = data.frame(year=SI))
    })
    
    output$text <- renderText({exp(modpred())})
    
    output$plot <- renderPlot({plot(pop$year,log(pop$pop), xlab = "Year", ylab= "log of Population", main = "Regression Generating data")})
    
    
    }   
)
   
    
