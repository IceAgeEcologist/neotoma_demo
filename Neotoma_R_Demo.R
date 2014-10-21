#Demonstration of neotoma package
#Simon Goring & Jack Williams
#Last Updated:  Oct 21, 2014
#
#See also:  Goring et al. (in review) Open Quaternary
#neotoma: A Programmatic Interface to the Neotoma Paleoecological Database
#https://github.com/SimonGoring/neotoma_paper

#Install neotoma package from GitHub repository
#(Note: neotoma will soon be available on CRAN)
install.packages("devtools")
library(devtools)
install_github("ropensci/neotoma")
library(neotoma)

#Get Site Information
#get_site returns a data frame with information about 
#Note use of % as wildcard operator
marion <- get_site(sitename = 'Marion%')
marion

#Get Dataset Information
#get_dataset returns a list of datasets and the metadata for each dataset
#we can pass output from get_site to get_dataset
marion.data  <- get_dataset(marion)
#Let's look at the data returned for Marion Lake - in  this case the first of two sites.
marion.data[[1]]

#Get Dataset
#get_download 
