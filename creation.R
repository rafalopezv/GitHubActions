# create a google sheet for testing
library(lubridate)
library(tidyverse)
library(googlesheets4)

actualizacion <- (lubridate::now()) %>% 
  as.character() %>% 
  as_tibble()



gs4_create(
  "prueba_gh_actions",
  sheets = list(
    prueba = actualizacion
  )
)



