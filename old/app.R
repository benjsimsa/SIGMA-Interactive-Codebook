library(shiny)
library(reactable)
library(here)
library(readxl)
library(tidyverse)

codebook = read_excel('SIGMA_DataDictionary_2022-10-24_needs_translation.xlsx')

codebook = codebook %>% 
  select(1, 3, 4, 8, 9, 5, 6, 7)




# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Interactive codebook: SIGMA project"),
    
    sidebarLayout(
     
      sidebarPanel(
        actionButton("group_type", "Group by instrument type"),
        actionButton("group_instrument", "Group by instrument"),
        actionButton("group_both", "Group by both instrument type and instrument")), 
     
     mainPanel(
        reactableOutput("table"),
        verbatimTextOutput("selected"))
))




# Define server logic required to draw a histogram
server <- function(input, output) {

    output$table <- renderReactable({
      reactable(codebook, 
      columns = list(
        'Instrument Type' = colDef(width = 100)),
      groupBy = c('Instrument Type', 'Instrument'), 
      pagination = FALSE, 
      searchable = TRUE,
      selection = 'multiple',
      onClick = "select", 
      highlight = TRUE)
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

