data = iris
head(data)
library(shiny)
ui <- fluidPage(
  "Hello World !",
  textInput("name", "Enter your name?:"),
  textOutput("q")
)
server <- function(input, output, session) {
  output$q <- renderText({
    paste("Do you like cats or dogs,", input$name, " ?" )
  })
}
shinyApp(ui = ui, server = server)