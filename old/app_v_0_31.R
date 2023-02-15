library(shiny)
library(reactable)
library(readxl)
library(tidyverse)
library(shinythemes)

codebook = read_excel('wave1_public.xlsx')

codebook = codebook %>% 
  select(1, 3, 4, 8, 9, 13)



ui <- fluidPage(theme = shinytheme("sandstone"),
                tabsetPanel(
                  
                  tabPanel("Introduction", fluid = TRUE,
                           tags$h1("Interactive codebook - SIGMA study"), 
                           tags$h3("What is SIGMA?"),
                           HTML("<p> This is the interactive codebook for the <a href='https://gbiomed.kuleuven.be/english/research/50000666/50000673/cpp/research-1/social-interaction/sigma/index.htm'>SIGMA study</a>. SIGMA is a three-wave intensive longitudinal study of child and adolescent mental health. 1,913 Flemish children and adolescents from the general population took part in the first wave of the SIGMA study. 
                                The SIGMA study used retrospective self-report questionnaires (via tablets), Experience Sampling (via smartphones), physiological measures (via wearables) and experimental measures (PCE).
                                The current version of the codebook only includes Wave 1. We are planning to add Wave 2 and Wave 3 soon.
                                For more information about the study procedure and sample characteristics, please refer to the <a href='https://psyarxiv.com/jp2fk/'>study protocol</a>.</p>"),
                           HTML("<p> <a href='https://osf.io/xwvc5/'>Click here</a> to access the SIGMA repository on the Open Science Framework. The repository contains details about the measures and the studies that used the SIGMA data.</p>"),
                           
                           tags$h3("How to use this codebook"),
                           HTML("<p>
                                <br> To use the codebook, click the Wave 1 button at the top of the page. 
                                <br> You will see a list of measure types (i.e., demographics, ESM, self-report questionnaires etc.). 
                                <br> To open the list of specific measures within a measure type, click the measure type. 
                                <br> Similarly, after clicking on a specific measure, you will see a list of individual items within each measure. 
                                <br> You can also view the 'raw' codebook (not grouped by measures) by clicking the Ungroup button on the left.
                                <br> You can select the variables you want to request by clicking the checkboxes on the left side of the codebook. The codebook will generate a list of selected items, which can be copy-pasted into your data request form.
                                <br>
                                <br> Tip: When requesting ESM variables, make sure you request all the ESM metadata you need (for example, the day number and beep number of each ESM beep).
                                <br>
                                <br> Please note that all items were originally administered in Flemish. The English translations of the items are only approximate.
                                <br>
                                <br> Note: Some of the questionnaires used in the SIGMA dataset are copyright-protected. As such, the full item wordings for these questionnaires are not included in this open codebook. For more information about these questionnaires, please reach out to SIGMA project coordinator Dr Robin Achterhof (robin.achterhof@kuleuven.be).
                                </p>"),
                           
                           tags$h3("Using the codebook to request SIGMA data"),
                           HTML("<p> Researchers can request the data collected in the SIGMA study via the <a href = 'https://redcap.gbiomed.kuleuven.be/surveys/?s=WDYAFAHWK4' >DROPS data checkout system  </a>. 
                                The purpose of this codebook is to make the process as easy as possible. For more information on how to request data through DROPS, please refer to the DROPS manual (LINK TO BE ADDED). </p>")
                           
                  ), 

                  tabPanel("Codebook: Wave 1", fluid = TRUE,
    # Application title
    titlePanel("Interactive codebook: SIGMA study, Wave 1"),
    
    sidebarLayout(
     
      sidebarPanel(
        actionButton("group_not", "Ungroup (simple list of variables)"),
        actionButton("group_both", "Group (variables listed per category)"), 
        
        verbatimTextOutput("selected"),
        " ", 
        HTML("<p>The text box above contains the codes of the variables you selected by clicking the checkboxes in the codebook. 
        You can copy-paste the list into the <a href = 'https://redcap.gbiomed.kuleuven.be/surveys/?s=WDYAFAHWK4' >DROPS data request form  </a> .
        </p>")
        ),
     
     mainPanel(
        reactableOutput("table"))
))))


# Define server logic required to draw a histogram
server <- function(input, output) {

  output$table <- renderReactable({
    reactable(codebook,
              pagination = FALSE, 
              searchable = TRUE,
              selection = 'multiple',
              onClick = "select", 
              highlight = TRUE,
              groupBy = c("Measure type", "Measure"),
              columns = list(
                Readme = colDef(cell = function(value) {
                  htmltools::tags$a(href = value, target = "_blank", value)
                })))
    })
    
    observeEvent(input$group_both, {
      output$table <- renderReactable({
        reactable(codebook,
                  pagination = FALSE, 
                  searchable = TRUE,
                  selection = 'multiple',
                  onClick = "select", 
                  highlight = TRUE,
                  groupBy = c("Measure type", "Measure"),
                  columns = list(
                    Readme = colDef(cell = function(value) {
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
                    Readme = colDef(cell = function(value) {
                      htmltools::tags$a(href = value, target = "_blank", value)
                    })))
      })
    })
    
    
    selection <- reactive({
      getReactableState("table", "selected")
    })
    
    output$selected <- renderPrint({
      req(selection())
      print(codebook[selection(), 1], n = 100)
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)



# TODO: allow the user themselves to choose the filter / groupby 

