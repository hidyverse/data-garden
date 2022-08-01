#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# library(shiny)
# 
# # Define UI for application that draws a histogram
# ui <- fluidPage(
# 
#     # # Application title
#     # titlePanel("Old Faithful Geyser Data"),
#     # 
#     # # Sidebar with a slider input for number of bins 
#     # sidebarLayout(
#     #     sidebarPanel(
#     #         sliderInput("bins",
#     #                     "Number of bins:",
#     #                     min = 1,
#     #                     max = 50,
#     #                     value = 30)
#     #     ),
# 
#         # Show a plot of the generated distribution
#         mainPanel(
#           img(src='www/myimage.jpg', align = "right"),
#           ### the rest of your code
#         )
#  #   )
# )
# 
# # Define server logic required to draw a histogram
# server <- function(input, output) {
# 
#     # output$distPlot <- renderPlot({
#     #     # generate bins based on input$bins from ui.R
#     #     x    <- faithful[, 2]
#     #     bins <- seq(min(x), max(x), length.out = input$bins + 1)
#     # 
#     #     # draw the histogram with the specified number of bins
#     #     hist(x, breaks = bins, col = 'darkgray', border = 'white')
#    #  })
# }
# 
# # Run the application 
# shinyApp(ui = ui, server = server)


library(shiny)
library(shinyBS)
library(shinyWidgets)

ui <- fluidPage(
  titlePanel("ShinyBS tooltips"),
  setBackgroundImage(
    src = "https://www.fillmurray.com/1920/1080"
  ),
  actionButton("btn", "On hover"),
  tipify(actionButton("btn2", "On click"), "Hello again! This is a click-able pop-up", placement="bottom", trigger = "click")
)

server <- function(input, output, session) {
  addTooltip(session=session,id="btn",title="Hello! This is a hover pop-up. You'll have to click to see the next one.")
}

shinyApp(ui, server)