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

# tidyverse time series
# feast, fasterr, tsibble, fable, tsibbledata

# Multivariate distributions
# MASS, distr

# easily plot probability distributions
# ggfortify

# best pair plot
# GGally

# validate r has build tools
# if done in rstudio and this check fails, this will auto-install build tools 
pkgbuild::has_build_tools(debug = T)

install.packages(c(
 'tidyverse',
 'tidymodels',
 'mlr3',
 'rstan'
 'shiny',
 'devtools',
 'curl',
 'lattice',
 'skimr',
 'RSQLIte',
 'tidytext',
 'distr',
 'remotes',
 'renv',
 'GGally',
 'ggdag',
 'ggfortify',
 'ggforce',
 'gganimate',
 'ggstatsplot',
 'patchwork',
 'ggthemes',
 'hrbrthemes',
 'ggsci',
 'wesanderson',
 'cowplot',
 'ggtext',
 'ggalt',
 'ISLR',
),
 dependencies = TRUE,
 repos='http://cran.rstudio.com/'
)

remotes::install_github('rmcelreath/rethinking')

# time series
#install.packages(c('tsibble', 'fable', 'feast', 'tsibbledata'), dependencies = T, repos='http://cran.rstudio.com/')

