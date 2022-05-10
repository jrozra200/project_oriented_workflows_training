# What happens when we load data from a location relative to this file? Can you
# modify this code to find the data from the correct working directory?
dir <- fs::path_rel("./data/installed-packages.csv")
dat <- read.csv(dir)

# Count packages in the dataset
nrow(dat)
