data <- read.csv("ArgentinaCPI.csv")

plot(data)


#Base R
plot(data$value~ data$time, ann=FALSE, type="o") + 
  title(xlab="Year") +
  title(ylab="Consumer Price Index") +
  title(main = "Argentina Consumer Price Index")

#Using Lattice Package
library(lattice)
xyplot(value ~ time, data,
       grid = TRUE, 
       main = "Argenitina Consumer Price Index",
       xlab = "Year", ylab = "Value",)


#Using GGPlot2
library(ggplot2)

ggplot(data, aes(x = time, y = value, color = time)) +
  geom_point() +
  geom_line() +
  labs(title = "Argentina Consumer Price Index",
       x = "Year",
       y = "Value")

