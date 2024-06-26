library(shiny)
library(shiny.shadcn)

ui <- fluidPage(
  titlePanel("reactR Input Example"),
  checkboxInput("textInput"),
  textOutput("textOutput")
)

server <- function(input, output, session) {
  output$textOutput <- renderText({
    sprintf("You entered: %s", input$textInput)
  })
}

shinyApp(ui, server)