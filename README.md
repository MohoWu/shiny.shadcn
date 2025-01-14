# shiny.shadcn

This is a proof of concept that modern JavaScript UI libraries like [shadcn UI](https://ui.shadcn.com/) can be ported to the R Shiny framework, bringing beautiful, customizable, and accessible UI components to your Shiny applications.

## Overview

shiny.shadcn aims to provide R Shiny developers with the power and flexibility of the shadcn UI library. This package bridges the gap between modern web development practices and R Shiny applications, allowing developers to create stunning, responsive, and accessible user interfaces with ease.

## Features

- Port of shadcn UI components to R Shiny
- Customizable themes and styles
- Accessible components out of the box
- Seamless integration with existing Shiny applications

## Installation

You can install the development version of shiny.shadcn from GitHub with:

```R
# install.packages("devtools")
devtools::install_github("mohowu/shiny.shadcn")
```

## Usage

Here's a basic example of how to use a shiny.shadcn component in your Shiny app:

```R
shiny::runApp(appDir = system.file("app", package = "shiny.shadcn"))
```


## Currently Supported Components
- [x] Button
- [x] Checkbox


## Acknowledgements

- [shadcn UI](https://ui.shadcn.com/) for the original component library
- The R Shiny team for their amazing work on Shiny
- [Outstanding User Interfaces with Shiny](https://unleash-shiny.rinterface.com/)
- [reactR](https://github.com/react-R/reactR)


## TODO

- [ ] Set up Vite as a testing ground for shadcn component
- [ ] Test if debugger works in React component
- [ ] Better Usage examples

