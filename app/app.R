library(shiny)
library(shiny.shadcn)

ui <- htmlTemplate(
  "template.html",
  button = action_button("btn", "Click me")
)

server <- function(input, output, session) {

  observeEvent(input$btn, {
    print(input$btn)
  })
}

shinyApp(ui, server)
