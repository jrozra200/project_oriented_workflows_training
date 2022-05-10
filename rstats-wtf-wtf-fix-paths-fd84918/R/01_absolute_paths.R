# Load data -- fix this path so it works for you
library(fs)
library(here)

dir <- here("rstats-wtf-wtf-fix-paths-fd84918/data", "installed-packages.csv")
dat <- read.csv(dir)

# View data
View(dat)
