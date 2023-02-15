library(shiny)
library(reactable)
library(readxl)
library(tidyverse)
library(shinythemes)
library(markdown)
library(knitr)
library(here)
library(shinyWidgets)
library(shinyDarkmode)

wave1 = read_excel('wave1_public.xlsx') 
wave1 = wave1 %>% select(1, 3, 4, 8, 9, 13)

wave2 = read_excel('wave2_public.xlsx') 
wave2 = wave2 %>% select(1, 3, 4, 8, 9, 13)

wavecovid = read_excel('wavecovid_public.xlsx') 
wavecovid = wavecovid %>% select(1, 3, 4, 8, 9, 13)

ui <- fluidPage(theme = shinytheme("yeti"),
                use_darkmode(),
      
                
                
                tabsetPanel(
                  
                  tabPanel("Introduction", fluid = TRUE,
                           
                           sidebarLayout(
                             sidebarPanel(position = "right",
                                        tags$h2("Important links"),
                                        HTML("<p> <a href = 'https://redcap.gbiomed.kuleuven.be/surveys/?s=WDYAFAHWK4' >DROPS abstract submission form</a>
                                             </p>"),
                                        HTML("<p> <a href = 'https://psyarxiv.com/jp2fk/' >SIGMA study protocol</a>
                                             </p>"),
                                        HTML("<p> <a href = https://osf.io/xwvc5/' >SIGMA OSF repository</a>
                                             </p>")),
                           
                           
                           mainPanel(
                             
                          tags$div(style = "margin-top: -25px; float: right; margin-right: -150px;",
                                      prettySwitch("togglemode", "Dark Mode", value = FALSE, fill = TRUE, status = "info")
                             ), 
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
                                The purpose of this codebook is to make the process as easy as possible. For more information on how to request data through DROPS, please refer to the <a href='https://sigmaleuven.shinyapps.io/DROPS_User_Guide/'>DROPS user guide.</a>  </p>")
                           
                  ))), 
                  
                  
                 
###########           
# TAB 2: CODEBOOK WAVE 1 
                  tabPanel("Codebook: Wave 1", fluid = TRUE,
                           
    # Application title
    titlePanel("Interactive codebook - SIGMA study"),
    
    sidebarLayout(
     
      sidebarPanel(
        actionButton("group_not", "Ungroup (simple list of variables)"),
        actionButton("group_both", "Group (variables listed per category)"), 
        
        verbatimTextOutput("selected"),
        " ", 
        HTML("<p>The text box above contains the codes of the variables you selected by clicking the checkboxes in the codebook. 
        You can copy-paste the list into the <a href = 'https://redcap.gbiomed.kuleuven.be/surveys/?s=WDYAFAHWK4' >DROPS abstract submission form  </a> .
        </p>")
        ),
     
     mainPanel(
        reactableOutput("table"))
     )),


########### 
# TAB 3: CODEBOOK WAVE 2
tabPanel("Codebook: Wave 2", fluid = TRUE,
         # Application title
         titlePanel("Interactive codebook: SIGMA study, Wave 2"),
        
         
         sidebarLayout(position = "right", fluid = TRUE,
           
           sidebarPanel(width = 1, 
             actionButton("group_not_w2", "Ungroup (simple list of variables)"),
             actionButton("group_both_w2", "Group (variables listed per category)"), 
             
             verbatimTextOutput("selected_w2"),
             " ", 
             HTML("<p>The text box above contains the codes of the variables you selected by clicking the checkboxes in the codebook. 
        You can copy-paste the list into the <a href = 'https://redcap.gbiomed.kuleuven.be/surveys/?s=WDYAFAHWK4' >DROPS abstract submission form  </a> .
        </p>")
           ),
           
           mainPanel(
             reactableOutput("table_w2"))
         )),

# TAB 4: CODEBOOK WAVE COVID
tabPanel("Codebook: Wave COVID", fluid = TRUE,
         # Application title
         titlePanel("Interactive codebook: SIGMA study, Wave COVID"),
         
         sidebarLayout(
           
           sidebarPanel(
             actionButton("group_not_covid", "Ungroup (simple list of variables)"),
             actionButton("group_both_covid", "Group (variables listed per category)"), 
             
             verbatimTextOutput("selected_covid"),
             " ", 
             HTML("<p>The text box above contains the codes of the variables you selected by clicking the checkboxes in the codebook. 
        You can copy-paste the list into the <a href = 'https://redcap.gbiomed.kuleuven.be/surveys/?s=WDYAFAHWK4' >DROPS abstract submission form  </a> .
        </p>")
           ),
           
           mainPanel(
             reactableOutput("table_covid"))
         ))))




############################
# server
############################

server <- function(input, output) {
  
  darkmode_toggle(inputid = 'togglemode')
  
  
  #### TABLE WAVE 1 

  output$table <- renderReactable({
    reactable(wave1,
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
        reactable(wave1,
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
        reactable(wave1,
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
      print(wave1[selection(), 1], n = 100)
    })
    
    ### TABLE WAVE 2 
    
    output$table_w2 <- renderReactable({
      reactable(wave2,
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
    
    observeEvent(input$group_both_w2, {
      output$table_w2 <- renderReactable({
        reactable(wave2,
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
    
    observeEvent(input$group_not_w2, {
      output$table_w2 <- renderReactable({
        reactable(wave2,
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
    
    
    selection_w2 <- reactive({
      getReactableState("table_w2", "selected_w2")
    })
    
    output$selected_w2 <- renderPrint({
      req(selection())
      print(wave2[selection(), 1], n = 100)
    })
    
    
    #### TABLE WAVE COVID 
    output$table_covid <- renderReactable({
      reactable(wavecovid,
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
    
    observeEvent(input$group_both_covid, {
      output$table_covid <- renderReactable({
        reactable(wave2,
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
    
    observeEvent(input$group_not_covid, {
      output$table_covid <- renderReactable({
        reactable(wave2,
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
    
    
    selection_covid <- reactive({
      getReactableState("table_covid", "selected_covid")
    })
    
    output$selected_covid <- renderPrint({
      req(selection())
      print(wavecovid[selection(), 1], n = 100)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

