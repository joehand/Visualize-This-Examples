#Chapter 4: Visualizing Patters Over Time
##Notes and Thoughts

In this chapter we look at using bar graphs to show data over time. Plus there are lots of hot dogs eaten. Fun!

You can find all of the graphs/images in the sub directories.

##Part 1: Hot Dog Eating Contest Graph (Fig 4-5)

####Making the Graph with R
First, the graph is created using R. This is pretty simple. You can set the labels, some color options, and a title. There are obviously many more things R is capable of.

The basic plot starts like this: 

	barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col="red", border=NA, xlab="Year", 
		ylab="Hot Dogs and Buns (HDB) Eaten")
	
Then to get the final plot we set some colors for years that have world records and add some spacing and a title:

~~~
# Filling Red for New Record, otherwise Gray
record_fill_colors <- c()
	for (i in 1:length(hotdogs$New.record) ) {
		if (hotdogs$New.record[i] == 1) {
			record_fill_colors <- c(record_fill_colors, '#821122')		
		} else {
			record_fill_colors <- c(record_fill_colors, '#cccccc')
		}	
	}

# Playing around with other barplot options: Adding spacing and title
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=record_fill_colors, border=NA, space=0.3, 
	xlab="Year", ylab="Hot Dogs and Buns (HDB) Eaten", 
	main="Nathan's Hot Dog Eating Contest Results, 1980 - 2010" )
~~~

Also, TextMate and R play really well together =). 
	

####Prettifying with Illustrator
After waiting for what seemed like forever for Illustrator to download and install, I got to open that up and play with it for the first time. 

Illustrator is pretty sweet! I have used Photoshop before but not Illustrator. Some things are pretty similar while other things are totally different. 

The graph is made to look a little nicer with better labels, tick marks, and finally some descriptive text. I had a heck of a time getting the top descriptive text to format. It still ended up looking a bit stretched.

The graph I imported from R was really big. This made it hard to export correctly with Illustrator. Where is the "Crop" function? Or what is similar to that? Moving on...

##Part 2: Stacked Bar Chart

This section uses more data from the hot dog eating contest. Once again, we make a bar plot. This time we are plotting the total number of hot dogs eaten each year by the top three contestants. 

The R section went quickly. Import the data and plot it. Illustrator work was also pretty simple. Illustrator is great when you start to get the hang of it.

I need to work on my colors. 

This is what I ended up with:

![Final stacked bar](https://github.com/joehand/Visualize-This-Examples/raw/master/ch4/part2_stacked/final_stacked.png "Hot Dog Eating")     


##Part 3: Scatterplot

The plot in R was pretty simple. The key takaway in this section was that you can plot something in R and then add stuff on to of the original plot.

In this example we are plotting high density vertical lines then adding black points to plot:
~~~
# New plot with lines and then adding points
plot(subscribers$Subscribers, type='h', ylim=c(0,30000), xlab='Day', ylab='Subscribers')
points(subscribers$Subscribers, pch=19, col='black')
~~~

This one took a little more work with illustrator. Somewhere along the line my grid got shifted without me knowing. Luckily, I noticed and could see in the book where it was supposed to be. That could definitely be a problem if I was creating something new and didn't notice!

Lesson: be careful and make sure the axis and tick marks are correct!

Here is the final plot:

![Final scatterplot](https://github.com/joehand/Visualize-This-Examples/raw/master/ch4/part3_scatter/final_subscrivers.png "Flowing Data Subscribers") 
 

