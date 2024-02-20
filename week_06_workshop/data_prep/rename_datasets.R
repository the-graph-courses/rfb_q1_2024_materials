## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 
## Title: Translate datasets to FR
## Author: Sabina Rodriguez
## Date Created: 2024-19-02
##
## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##
# Physical Activity Dataset ----

## ~ Load Packages ~
if(!require(pacman)) install.packages("pacman")
pacman :: p_load(tidyverse, here, openxlsx, readxl, purrr)

## ~ Load Data ~
df <- read_csv(here("data/fr_india_tuberculosis.csv"))

# Delete column cout total
df <- df %>% 
  select(-`cout total`)

# Review data 
glimpse(df)
summary(df)
unique(df$Sexe)
unique(df$Education)
unique(df$Emploi)
unique(df$Alcool)
unique(df$Fumer)

df <- df %>% 
  mutate(Sexe = if_else(Sexe == "Male",
                        "Homme",
                        "Femme"),
         Education = case_when(
           Education == "Middle" ~ "Intermédiaire",
           Education == "No Education" ~ "Pas d'éducation",
           Education == "Missing" ~ "Manquant", 
           Education == "Primary" ~ "Primaire", 
           Education == "Graduate" ~ "Diplômé", 
           Education == "Secondary" ~ "Secondaire", 
           Education == "Higher Secondary" ~ "Secondaire supérieur",
           Education == "Graduate & Above" ~ "Diplômé et plus"),
         Emploi = if_else(Emploi == "Working", 
                          "Travaille", 
                          "Ne travaille pas"),
         Alcool = if_else(Alcool == "Yes",
                          "Oui",
                          "Non"),
         Fumer = if_else(Fumer == "Yes", 
                         "Oui", 
                         "Non"))

# # Write new column names and get old column names
# new_names <- c("id_personnel", "id_menage", "sexe", "statut", "imc", "ap_sedentaire_s_jour", "ap_legere_s_jour", "apmv_s_jour", "who_recommendation")
# # Make sure both vectors are the same length
# old_names <- colnames(df)
# 
# # Function to rename and save new dataset
# rename_columns_save <- function(df, old_names, new_names, file_name, save_path) {
#   # Check if the length of new_names matches the length of old_names
#   if(length(new_names) != length(old_names)) {
#     stop("The number of new names must match the number of old names provided.")
#   }
#   
#   # Rename columns
#   for(i in seq_along(old_names)) {
#     colnames(df)[colnames(df) == old_names[i]] <- new_names[i]
#   }
#   
#   # Construct the full file path using here() and the save_path
#   full_path <- here(save_path, paste0(file_name, ".csv"))
#   
#   # Save the dataframe to a CSV file at the specified path
#   write_csv(df, full_path)
#   
#   return(df)
# }
# 
# # Use function te rename and to save new file
# df_renamed <- rename_columns_save(df, old_names, new_names, 
#                                   file_name = "activite_physique", # Write name to save
#                                   save_path = "data") # Select folder location
# 

# Save new dataset
write_csv(df, here("data/inde_tuberculose.csv"))
