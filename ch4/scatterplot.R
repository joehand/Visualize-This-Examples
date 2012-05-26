# Setting directory
setwd('/Users/hand/Sites/_projects/flowing_data/')

# Reading CSV file for Hot Dog Contests
subscribers <- read.csv('ch4/data/flowingdata_subscribers.csv',sep=',', header=TRUE)

# First simple scatterplot 
plot(subscribers$Subscribers)

#Setting Point Type and Setting Range of Y-axis
plot(subscribers$Subscribers, type='p', ylim=c(0,30000))


