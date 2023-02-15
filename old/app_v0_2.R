library(shiny)
library(reactable)
library(readxl)
library(tidyverse)
library(shinythemes)

codebook = read_excel('SIGMA_DataDictionary_2022-10-24_needs_translation.xlsx')

codebook = codebook %>% 
  select(1, 3, 4, 8, 9, 13)




# Define UI for application that draws a histogram
ui <- fluidPage(theme = shinytheme("flatly"),

    # Application title
    titlePanel("Interactive codebook: SIGMA project"),
    
    sidebarLayout(
     
      sidebarPanel(
        actionButton("group_not", "Do not group variables"),
        actionButton("group_type", "Group variables by instrument type"),
        actionButton("group_instrument", "Group variables by instrument"),
        actionButton("group_both", "Group by both instrument type and instrument"), 
        
        verbatimTextOutput("selected")),
     
     mainPanel(
        reactableOutput("table"))
))




# Define server logic required to draw a histogram
server <- function(input, output) {

    output$table <- renderReactable({
      reactable(codebook,
      pagination = FALSE, 
      searchable = TRUE,
      selection = 'multiple',
      onClick = "select", 
      highlight = TRUE,
      columns = list(
        Manual = colDef(cell = function(value) {
          htmltools::tags$a(href = value, target = "_blank", value)
        })))
    })
    
    observeEvent(input$group_type, {
      output$table <- renderReactable({
        reactable(codebook,
                  pagination = FALSE, 
                  searchable = TRUE,
                  selection = 'multiple',
                  onClick = "select", 
                  highlight = TRUE,
                  groupBy = "Instrument Type",
                  columns = list(
                    Manual = colDef(cell = function(value) {
                      htmltools::tags$a(href = value, target = "_blank", value)
                    })))
      })
    })
    
    observeEvent(input$group_instrument, {
      output$table <- renderReactable({
        reactable(codebook,
                  pagination = FALSE, 
                  searchable = TRUE,
                  selection = 'multiple',
                  onClick = "select", 
                  highlight = TRUE,
                  groupBy = "Instrument",
                  columns = list(
                    Manual = colDef(cell = function(value) {
                      htmltools::tags$a(href = value, target = "_blank", value)
                    })))
      })
    })
    
    observeEvent(input$group_both, {
      output$table <- renderReactable({
        reactable(codebook,
                  pagination = FALSE, 
                  searchable = TRUE,
                  selection = 'multiple',
                  onClick = "select", 
                  highlight = TRUE,
                  groupBy = c("Instrument Type", "Instrument"),
                  columns = list(
                    Manual = colDef(cell = function(value) {
                      htmltools::tags$a(href = value, target = "_blank", value)
                    })))
      })
    })
    
    observeEvent(input$group_not, {
      output$table <- renderReactable({
        reactable(codebook,
                  pagination = FALSE, 
                  searchable = TRUE,
                  selection = 'multiple',
                  onClick = "select", 
                  highlight = TRUE,
                  columns = list(
                    Manual = colDef(cell = function(value) {
                      htmltools::tags$a(href = value, target = "_blank", value)
                    })))
      })
    })
    
    
    selection <- reactive({
      getReactableState("table", "selected")
    })
    
    output$selected <- renderPrint({
      req(selection())
      print(codebook[selection(), 1])
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)



# TODO: allow the user themselves to choose the filter / groupby 

