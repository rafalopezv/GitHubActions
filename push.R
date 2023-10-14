# Libraries
library(lubridate)
library(tidyverse)
library(googlesheets4)

# Authenticate using the service account token from GitHub secrets
gs4_auth(path = Sys.getenv('GSHEETS_AUTO'))

# Update a google sheet for testing
actualizacion <- (lubridate::now()) %>% 
  as.character() %>% 
  as_tibble()

sheet_id <- gs4_find("prueba_gh_actions")

sheet_write(actualizacion, sheet_id, sheet = "prueba")
