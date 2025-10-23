# load library
library(ggplot2)

# create some data
a <- 1:100
b <- runif(100, min = 1, max = 999)
ab.df <- data.frame(a,b)
ab.df$color <- "green"
ab.df$color[1:50] <- "red"

# make a line plot
ggplot(data = ab.df, aes(x = a, y = b, group = color)) +
  geom_line(aes(color = color)) +
  geom_point(aes(size = b))
