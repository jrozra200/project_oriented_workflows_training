#' Which libraries does R search for packages?
library(fs)
path_real(.Library)
path_real(.libPaths())

#' Installed packages

## use installed.packages() to get all installed packages
library(tidyverse)
ipt <- installed.packages() %>% 
    as_tibble()

## how many packages?
nrow(ipt)

#' Exploring the packages

## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
##   * what proportion need compilation?
##   * how break down re: version of R they were built on
ipt %>% 
    group_by(LibPath) %>% 
    summarise(count = length(LibPath))

ipt %>% 
    group_by(Priority) %>% 
    summarise(count = length(Priority))

ipt %>% 
    group_by(Priority, LibPath) %>% 
    summarise(count = length(Priority))

ipt %>% 
    group_by(NeedsCompilation) %>% 
    summarise(count = length(NeedsCompilation) / nrow(ipt))

ipt %>% 
    group_by(Built) %>% 
    summarise(count = length(Built))


#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
###     I think so?
##   * how does the result of .libPaths() relate to the result of .Library?
identical(path_real(.Library), path_real(.libPaths()))


#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
### No - some are NA
## study package naming style (all lower case, contains '.', etc

ipt <- ipt %>% 
    mutate(has_upper = grepl("[A-Z]", Package),
           has_punct = grepl("\\.", Package),
           is_all_lower = ifelse(has_upper == FALSE, TRUE, FALSE))

ipt %>% 
    group_by(is_all_lower) %>% 
    summarise(count = length(is_all_lower))

ipt %>% 
    group_by(has_punct) %>% 
    summarise(count = length(has_punct))

## use `fields` argument to installed.packages() to get more info and use it!
