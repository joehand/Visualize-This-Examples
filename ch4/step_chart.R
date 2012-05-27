# Setting directory
setwd('/Users/hand/Sites/_projects/flowing_data/')

# Reading CSV file for US Postage Rates
postage <- read.csv('ch4/data/us-postage.csv',sep=',', header=TRUE)

# Basic Step Chart, using plot() again. 
plot(postage$Year, postage$Price, type="s")

# Basic Step Chart, adding labels and title. 
plot(postage$Year, postage$Price, type="s", 
	main="US Postage Rates for Letters, First Ounce, 1991-2010",xlab="Year", ylab="Postage Rate (Dollars)")


# Just for fun line plot. Hint: Doesn't convey the information as well!!
plot(postage$Year, postage$Price, type="l")


