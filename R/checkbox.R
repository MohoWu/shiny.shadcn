#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
checkboxInput <- function(inputId, default = FALSE, label = NULL, description = NULL) {
  reactR::createReactShinyInput(
    inputId,
    "checkbox",
    htmltools::htmlDependency(
      name = "checkbox-input",
      version = "1.0.0",
      src = "www/shiny.shadcn",
      package = "shiny.shadcn",
      script = "shadcn_bundle.js"
    ),
    default,
    configuration = list(
      label = label,
      id = inputId,
      description = description
    ),
    htmltools::tags$div
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateCheckboxInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
