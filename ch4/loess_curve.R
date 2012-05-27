# Setting directory
setwd('/Users/hand/Sites/_projects/flowing_data/')

# Reading CSV file for US Unemployment Stats
unemployment <- read.csv('ch4/data/unemployment-rate-1948-2010.csv',sep=',', header=TRUE)

# Checking out the data. why is the comma needed?
unemployment[1:10,]

# Plain scatter plot
plot(1:length(unemployment$Value), unemployment$Value)

# Plotting again and fitting LOESS Curve to plot
scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value)

# Adjusting the settings: Changing Degree of polynomial & Span which controls smoothness
scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value,
	ylim=c(0,11), degree=2, col='#cccccc', span=0.5)
	
# Trying other settings. Third degree poly and smoothing. Shows more volatility over long-term trend.
scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value,
	ylim=c(0,11), degree=3, col='#cccccc', span=0.25)