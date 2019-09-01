# tidyverse includes
#    ggplot2, for data visualisation.
#    dplyr, for data manipulation.
#    tidyr, for data tidying.
#    readr, for data import.
#    purrr, for functional programming.
#    tibble, for tibbles, a modern re-imagining of data frames.
#    stringr, for strings.
#    forcats, for factors.
# Working with specific types of vectors:
#     hms, for times.
#     lubridate, for date/times.
# 
# Importing other types of data:
#     feather, for sharing with Python and other languages.
#     haven, for SPSS, SAS and Stata files.
#     httr, for web apis.
#     jsonlite for JSON.
#     readxl, for .xls and .xlsx files.
#     rvest, for web scraping.
#     xml2, for XML.
# 
# Modelling
#     modelr, for modelling within a pipeline
#     broom, for turning models into tidy data
#

# tidyverts
# 'feast', 'fasterr', 'tsibble', 'fable', 'tsibbledata'


install.packages(c(
 'tidyverse',
 'tidymodels',
 'shiny',
 'devtools',
 'curl',
 'lattice',
 'skimr',
 'RSQLIte',
 'DBI',
 'tidytext'
),
 dependencies = TRUE,
 repos='http://cran.rstudio.com/'
)

