library(shiny)
library(shiny.shadcn)

tag_list <- shiny::tagList(
  action_button("btn", "Click me"),
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
