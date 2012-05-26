# Setting directory
setwd('/Users/hand/Sites/_projects/flowing_data/')

# Reading CSV file for Hot Dog Contests
hot_dog_places <- read.csv('ch4/data/hot-dog-places.csv',sep=',', header=TRUE)

# Changing Names back to Numbers (since R doesn't like number strings)
names(hot_dog_places) <- c("'00", "'01", "'02", "'03", "'04", "'05", "'06", "'07", "'08", "'09", "'10")

# Convert data frame to matrix
hot_dog_matrix <- as.matrix(hot_dog_places)

# First Bar Plot Using Matrix Data
barplot(hot_dog_matrix, border=NA, space=0.25, ylim=c(0,200), xlab="Year", 
	ylab="Hot dogs and buns (HDBs) eaten", main="Hot Dog Eating Contest Results, 2000 - 2010")
	
	

	

