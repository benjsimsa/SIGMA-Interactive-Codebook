
library(reactable)
library(here)
library(readxl)
library(tidyverse)

codebook = read_excel('SIGMA_DataDictionary_2022-10-24_needs_translation.xlsx')

codebook = codebook %>% 
  select(1, 3, 4, 8, 9, 5, 6, 7)

codebook$Instrument = as.factor(codebook$Instrument)


codebook

options(reactable.theme = reactableTheme(
  color = "hsl(233, 9%, 87%)",
  backgroundColor = "hsl(233, 9%, 19%)",
  borderColor = "hsl(233, 9%, 22%)",
  stripedColor = "hsl(233, 12%, 22%)",
  highlightColor = "hsl(233, 12%, 24%)",
  inputStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
  selectStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
  pageButtonHoverStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
  pageButtonActiveStyle = list(backgroundColor = "hsl(233, 9%, 28%)")
))



reactable(codebook, filterable = TRUE)

reactable(codebook, 
          columns = list(
            'Instrument Type' = colDef(width = 100)),
          groupBy = c('Instrument Type', 'Instrument'), 
          pagination = FALSE, 
          searchable = TRUE,
          selection = 'multiple',
          onClick = "select", 
          highlight = TRUE)

reactable(codebook, groupBy = 'Field Type')

# add link to manual to the table! 
# download a custom codebook - only selected variables 

