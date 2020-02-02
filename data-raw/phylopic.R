## code to prepare `phylopic` dataset goes here
phylopic_raw <- read.csv("data-raw/phylopic.csv")

phylopic <- phylopic_raw

phylopic$ID <- gsub("^http://phylopic.org/image/", "", phylopic$Page)
phylopic$ID <- gsub("/$", "", phylopic$ID)

usethis::use_data(phylopic)
