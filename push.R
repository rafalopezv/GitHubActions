# Libraries
library(googlesheets4)

# Authenticate using the service account token from GitHub secrets
gs4_auth(path = Sys.getenv('GSHEETS_AUTO'))

# Get the current date and time
current_datetime <- Sys.time()

# Format the datetime as a character string
formatted_datetime <- format(current_datetime, format = "%Y-%m-%d %H:%M:%S")

# Create a data frame
data <- data.frame(Timestamp = formatted_datetime)


# Find the Google Sheets
sheet_id <- gs4_find("prueba_gh_actions")

sheet_write(actualizacion, sheet_id, sheet = "prueba")

