
# Vectors -----------------------------------------------------------------
a <- 1 #Has the number 1 in it; has 1 total thing in it
a <- c(30, 44) #Hasthe numbers 30 and 44 in it; has 1 total thing in it
a <- c(30.4, 44.4) #
a <- 30L
a <- c(30L) # same as line above
a <- c(TRUE, FALSE) #These are all vectors
a <- 
a <- c(1, "two", FALSE) #Returns a vector of characters
a <-                    #String is least common denominator so it changes everything to string
a <- c(1, FALSE)        #One is numeric one is boolean. will be boolean
#Strings, longs, doubles, factors and other types. Try playing same thing


# Lists -------------------------------------------------------------------
list(a=1:1L, b=2.5, c="string", d=FALSE)
a <- list(a=1:1L, b=2.5, c="string", FALSE)

a["a"]
a[1]      #Same as line above
a[[1]]    #How does this address it differently? Answer - doesn't return the name
a[["a"]]  #Same as line above


# Data Frame --------------------------------------------------------------

# data frame = list of vectors
#not rows of data, but columns of data

install.packages("tidyverse")
library(tidyverse)

data_frame(
  hours = c(1, 3, 5, 7, 9),
  widgets = c(23, 99, 31, 65, 78)
)

View(data_frame(
  hours = c(1, 3, 5, 7, 9),
  widgets = c(23, 99, 31, 65, 78)
))

as.logical(as.character(as.integer(as.numeric(FALSE))))

FALSE %>%
  as.numeric() %>%
  as.integer() %>%
  as.character() %>%
  as.logical()


db <- data_frame(
  hours = c(1, 3, 5, 7, 9),
  widgets = c(23, 99, 31, 65, 78)
) %>%
  filter(widgets > 30)

db %>% filter(widgets > 30)
filter(db, widgets > 30)    #Same as line above

db %>%                      #How many rows is widgets greater than 30 ?
  filter(widgets > 30) %>%  #
  summarise(n())            #

db %>%
  filter(widgets > 30) %>%
  nrow()

