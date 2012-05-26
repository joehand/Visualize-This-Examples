# Setting directory
setwd('/Users/hand/Sites/_projects/flowing_data/')

# Reading CSV file for Hot Dog Contests
hotdogs <- read.csv('ch4/data/hot-dog-contest-winners.csv',sep=',', header=TRUE)

# Plotting Bar graph of winners, Red Bars without border, xlabel and ylabel.
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col="red", border=NA, xlab="Year", ylab="Hot Dogs and Buns (HDB) Eaten")

# Fill colors Red for a winner from the United States, otherwise Gray
us_fill_colors <- c()
	for (i in 1:length(hotdogs$Country) ) {
		if (hotdogs$Country[i] == "United States") {
			us_fill_colors <- c(us_fill_colors, '#821122')
		} else {
			us_fill_colors <- c(us_fill_colors, '#cccccc')
		}
	}
	
# Same bar plot with above fill colors
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=us_fill_colors, border=NA, xlab="Year", ylab="Hot Dogs and Buns (HDB) Eaten")

# Filling Red for New Record, otherwise Gray
record_fill_colors <- c()
	for (i in 1:length(hotdogs$New.record) ) {
		if (hotdogs$New.record[i] == 1) {
			record_fill_colors <- c(record_fill_colors, '#821122')		
		} else {
			record_fill_colors <- c(record_fill_colors, '#cccccc')
		}	
	}

# Plotting same plot with New World Records highlighted in Red	
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=record_fill_colors, border=NA, xlab="Year", ylab="Hot Dogs and Buns (HDB) Eaten")

# Playing around with other barplot options: Adding spacing and title
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=record_fill_colors, border=NA, space=0.3, xlab="Year", ylab="Hot Dogs and Buns (HDB) Eaten", main="Nathan's Hot Dog Eating Contest Results, 1980 - 2010" )
