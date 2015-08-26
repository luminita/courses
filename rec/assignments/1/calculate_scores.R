setwd("C:\\work\\training\\other\\courses\\rec\\assignments\\1")
# load data 
dataset <- read.csv("A1Ratings.csv", header=T)
head(dataset)

# 1. Averages
means<-c()
for (i in 2:ncol(dataset)) {
    means <- c(means, mean(dataset[, i], na.rm=TRUE))
}
ordered_means <- sort(means, decreasing=TRUE, index.return=TRUE)
dataset[1, ordered_means$ix[1:5]+1]

# 2. Number of ratings for each movie 
f <- function(x) {
  return (sum(!is.na(x)))
}
nratings<-apply(dataset[, 2:ncol(dataset)], 2, f)
ordered_ratings <- sort(nratings, decreasing=TRUE, index.return=TRUE)
dataset[1, ordered_ratings$ix[1:5]+1]

# 3. Percentage of ratings 4+
perc<-c()
for (i in 2:ncol(dataset)) {
  p <- sum(dataset[,i]>=4, na.rm=TRUE) / sum(!is.na(dataset[,i])) * 100
  perc <- c(perc, p)
}
ordered_perc <- sort(perc, decreasing=TRUE, index.return=TRUE)
dataset[1, ordered_perc$ix[1:5]+1]


# 4. Movies that most often occur with star wars a new hope 
n_starwars <- sum(!is.na(dataset[,2]))  
f <- function(x) {
  counter <- 0
  for (i in 1:nrow(dataset)) {
    if(!is.na(dataset[i,2]) && !is.na(x[i])) {
      counter <- counter + 1
    } 
  }
  return (counter/n_starwars*100)
}
x<-apply(dataset[, 2:ncol(dataset)], 2, f)
ordered_x <- sort(x, decreasing=TRUE, index.return=TRUE)
dataset[1, ordered_x$ix[1:6]+1]


