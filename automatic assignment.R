library(readxl)
library(writexl)

data1 = read_excel(here:::here("wave1_public.xlsx"))
data2a = read_excel(here::here("wave2a_public.xlsx"))
data2 = read_excel(here:::here("wave2b_public.xlsx"))
datacovid = read_excel(here:::here("wavecovid_public.xlsx"))

# WAVE 2 

intersection = intersect(data1$`Variable name`, data2$`Variable name`)

for (i in 1:length(intersection)){
  row_original = which(data1$`Variable name` == intersection[i])
  row_replace = which(data2$`Variable name` == intersection[i])
  row_replace_covid = which(data3$`Variable name` == intersection[i])

  wording = data1[row_original, 9]
  readme = data1[row_original, 13]
  type = data1[row_original, 3]
  meas = data1[row_original, 4]
  
  data2[row_replace, 9] = wording
  data2[row_replace,13] = readme
  data2[row_replace, 3] = type 
  data2[row_replace, 4] = meas

}

write_xlsx(data2, here:::here("wave2b_public_final.xlsx"))

# WAVE COVID 
intersection_covid = intersect(data2$`Variable name`, datacovid$`Variable name`)

for (i in 1:length(intersection_covid)){
  row_original = which(data2$`Variable name` == intersection_covid[i])
  row_replace_covid = which(datacovid$`Variable name` == intersection_covid[i])
  
  wording = data2[row_original, 9]
  readme = data2[row_original, 13]
  type = data2[row_original, 3]
  meas = data2[row_original, 4]
  
  datacovid[row_replace_covid, 9] = wording
  datacovid[row_replace_covid,13] = readme
  datacovid[row_replace_covid, 3] = type 
  datacovid[row_replace_covid, 4] = meas
  
}

write_xlsx(datacovid, here:::here("wavecovid_public_r.xlsx"))




#### Part 2: Find out which items were included in which waves 
data1 = read_excel(here:::here("wave1_public_final.xlsx"))
data2a = read_excel(here:::here("wave2a_public_final.xlsx"))
data2 = read_excel(here:::here("wave2b_public_final.xlsx"))
datacovid = read_excel(here:::here("wavecovid_public_final.xlsx"))



# wave 1 
incl_wave_1 = vector()
for(i in 1:length(data1$`Variable name`)){
  incl_wave_1[i] = "'1'"
  if(data1[i, 1] %in% data2a$`Variable name`){incl_wave_1[i] = paste(incl_wave_1[i], "'2a'", sep = " ")}
  if(data1[i, 1] %in% datacovid$`Variable name`){incl_wave_1[i] = paste(incl_wave_1[i], "'covid'", sep = " ")}
  if(data1[i, 1] %in% data2$`Variable name`){incl_wave_1[i] = paste(incl_wave_1[i], "'2b'", sep = " ")}
}

data1$`Included in waves` = incl_wave_1
write_xlsx(data1, here:::here("wave1_public_final.xlsx"))

# wave 2a 
incl_wave_2a = vector()
for(i in 1:length(data2a$`Variable name`)){
  incl_wave_2a[i] = ""
  if(data2a[i, 1] %in% data1$`Variable name`){incl_wave_2a[i] = paste(incl_wave_2a[i], "'1'", sep = " ")}
  incl_wave_2a[i] = paste(incl_wave_2a[i], "'2a'", sep = " ")
  if(data2a[i, 1] %in% datacovid$`Variable name`){incl_wave_2a[i] = paste(incl_wave_2a[i], "'covid'", sep = " ")}
  if(data2a[i, 1] %in% data2$`Variable name`){incl_wave_2a[i] = paste(incl_wave_2a[i], "'2b'", sep = " ")}
}

data2a$`Included in waves` = incl_wave_2a
write_xlsx(data2a, here:::here("wave2a_public_final.xlsx"))


# wave covid
incl_wave_covid = vector()
for(i in 1:length(datacovid$`Variable name`)){
  incl_wave_covid[i] = ""
  if(datacovid[i, 1] %in% data1$`Variable name`){incl_wave_covid[i] = "'1'"}
  if(datacovid[i, 1] %in% data2a$`Variable name`){incl_wave_covid[i] = paste(incl_wave_covid[i], "'2a'", sep = " ")}
  incl_wave_covid[i] = paste(incl_wave_covid[i], "'covid'")
  if(datacovid[i, 1] %in% data2$`Variable name`){incl_wave_covid[i] = paste(incl_wave_covid[i], "'2b'", sep = " ")}
}

datacovid$`Included in waves` = incl_wave_covid
write_xlsx(datacovid, here:::here("wavecovid_public_final.xlsx"))


# wave 2b 
incl_wave_2 = vector()
for(i in 1:length(data2$`Variable name`)){
  incl_wave_2[i] = ""
  if(data2[i, 1] %in% data1$`Variable name`){incl_wave_2[i] = "'1'"}
  if(data2[i, 1] %in% data2a$`Variable name`){incl_wave_2[i] = paste(incl_wave_2[i], "'2a'", sep = " ")}
  if(data2[i, 1] %in% datacovid$`Variable name`){incl_wave_2[i] = paste(incl_wave_2[i], "'covid'", sep = " ")}
  incl_wave_2[i] = paste(incl_wave_2[i], "'2b'")
}

data2$`Included in waves` = incl_wave_2
write_xlsx(data2, here:::here("wave2b_public_final.xlsx"))

