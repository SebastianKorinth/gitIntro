library(ggplot2)

a <- 1:100
b <- runif(100, min = 1, max = 999)
ab.df <- data.frame(a,b)

ggplot(data = ab.df, aes(x = a, y = b)) +
  geom_line() +
  geom_point()
