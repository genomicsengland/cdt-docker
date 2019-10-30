# set the repository to Seattle
cat("Setting Seattle repository")
r = getOption("repos") 
r["CRAN"] = "http://cran.fhcrc.org/"
options(repos = r)
rm(r)

# install jsonlite which is a dependency for wrangleR
install.packages("jsonlite")
