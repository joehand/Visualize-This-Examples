# Setting directory
setwd('/Users/hand/Sites/_projects/flowing_data/')

# Reading CSV file for World Population Stats
population <- read.csv('ch4/data/world-population.csv',sep=',', header=TRUE)

#Plotting default time series graph
plot(population$Year, population$Population, type="l", ylim=c(0,7000000000), xlab="Year", ylab="Population")

