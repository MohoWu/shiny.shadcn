library(shiny)
library(shiny.shadcn)

tag_list <- shiny::tagList(
  h2("Action button", style = "margin:1rem"),
  action_button("btn", "Click me"),
  h2("Checkbox input", style = "margin:1rem"),
  shiny.shadcn::checkboxInput("checkbox", label = "Accept terms and conditions",
                              description = "Please read the terms and conditions before accepting")
)

ui <- htmlTemplate(
  "template.html",
  tagList = tag_list
)

server <- function(input, output, session) {

  observeEvent(input$btn, {
    print(input$btn)
  })

  observeEvent(input$checkbox, {
    print(input$checkbox)
  })

}

shinyApp(ui, server)
