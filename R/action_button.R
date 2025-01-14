#' Button
#'
#' @param inputId input id
#' @param label button label
#' @param variant one of "default", "secondary", "destructive", "outline", "ghost", "link"
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
action_button <- function(inputId, label = NULL, variant = "default") {
  reactR::createReactShinyInput(
    inputId,
    "action_button",
    htmltools::htmlDependency(
      name = "action_button-input",
      version = "1.0.0",
      src = "www/shiny.shadcn",
      package = "shiny.shadcn",
      script = "shadcn_bundle.js"
    ),
    default = 0,
    configuration = list(
      label = label,
      variant = variant
    ),
    htmltools::tags$div
  )
}

#' Update action button
#'
#' Update an action button with a new value
#'
#' @export
updateAction_button <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
