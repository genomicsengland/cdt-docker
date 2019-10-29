# set the repository to Seattle
cat("Setting Seattle repository")
r = getOption("repos") 
r["CRAN"] = "http://cran.fhcrc.org/"
options(repos = r)
rm(r)

# install RPostgreSQL
install.packages("RPostgreSQL")
install.packages("tidyverse")
install.packages("jsonlite")
