# Setting directory
setwd('/Users/hand/Sites/_projects/flowing_data/')

# Reading CSV file for Flowing Data subscibers
subscribers <- read.csv('ch4/data/flowingdata_subscribers.csv',sep=',', header=TRUE)

# First simple scatterplot 
plot(subscribers$Subscribers)

# Setting Point Type and Setting Range of Y-axis
plot(subscribers$Subscribers, type='p', ylim=c(0,30000))

# New plot with lines and then adding points
plot(subscribers$Subscribers, type='h', ylim=c(0,30000), xlab='Day', ylab='Subscribers')
points(subscribers$Subscribers, pch=19, col='black')


