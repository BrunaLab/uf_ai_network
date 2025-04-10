
# description -------------------------------------------------------------

# Search date: 10 april 2025 
# Database: WOS Core Collection via UF Library
# Affiliation: University of Florida AND
# Topic: machine learning OR deep learning OR large language model* OR 
# reinforcement learning OR Neural Network* OR artificial intelligence
# Document Types: Article or Review Article or Editorial Material or 
# Proceeding Paper or Data Paper or Note or Letter or Meeting Abstract
# load libraries ----------------------------------------------------------

library(tidyverse)
# install.packages("devtools")
devtools::install_github("ropensci/refsplitr")
library(refsplitr)


# load data ---------------------------------------------------------------

uf<-references_read(data = "./data_wos/", dir = TRUE)
write_csv(uf,"./data_clean/uf_refs.csv")

uf_authors<-authors_clean(uf)
write_csv(uf_authors,"./data_clean/uf_authors.csv")

authors_prelim<-uf_authors$preliminary
authors_.  <-uf_authors$. 


