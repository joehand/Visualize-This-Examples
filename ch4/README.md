#Chapter 4: Visualizing Patters Over Time
##Notes and Thoughts
This readme will just track any notes and thoughts I have while going through the exercises in chapter 4 of Visualize This. I will also try to include the final plots in this readme.

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

![Final scatterplot](https://github.com/joehand/Visualize-This-Examples/raw/master/ch4/part3_scatter/final_subscribers.png "Flowing Data Subscribers") 
 
##Part 4: Continuous Data

This section is all about various ways to graph continuous data. The idea is the same as the scatterplot, but what the plot represents is different: discrete data vs continuous data.

###Part 4a: World Population
This was mostly an exercise in using the graphing functionality in adobe illustrator. I think I will stick with using R for the initial plotting...

Final plot: 

![Final world pop](https://github.com/joehand/Visualize-This-Examples/raw/master/ch4/part4_continuous/world_pop_final.png "World Population") 

###Part 4b: Step Chart (USPS Rates)
In continuous plots connecting one point to the next can be deceiving. A step chart does a better job of showing big jumps from one point to the next.

We are going to be looking at the US postage rate changes from 1991 to 2009.

####Plotting in R
Woo. Back to plotting in R. 

___Sidenote:___
>Did I say how much I love using R in TextMate yet? Definitely get the R Bundle if you are using TextMate. You can run R right from TextMate and it will show you the code and all the plots. Then you can do what you want with the PDFs! Only downside so far? You cannot check the value of objects without running the whole file.

Nice and easy to do the step chart. Lets clean this baby up in illustrator.

![Final postage rate](https://github.com/joehand/Visualize-This-Examples/raw/master/ch4/part4_continuous/us_postage_final.png "USPS Postage Rates") 

###Part 4c: Smoothing & Estimation (US Unemployment)
Checking out the scatterplot of the data with R. 

Downside to using R in TextMate? The images are fixed size after running; you cant resize to see change aspect ratio of graph.

The last graph felt a bit tricky in illustrator for some reason. Here is the final:

![Final unemployment](https://github.com/joehand/Visualize-This-Examples/raw/master/ch4/part4_continuous/unemployment_final.png "US Unemployment Rates") 


##Conclusion
Phew. That was a lot! Definitely learned a lot about illustrator in this chapter. It was interesting to see what Nathan did to make the graphs more readable. Some of the graphs from R started out not saying much. But after some work with illustrator they told a full story and looked nice!

The use of R in this chapter was less than complex. Mostly just used the basic R commands then brought everything into illustrator. 

The most important part of this chapter was the look at various ways to plot data. By using simple but well know data examples Nathan did a good job of communicating the different uses for the types of plots we explored.

I look forward to diving into R more. But the next chapter we move on to using HTML, CSS, and JS to plot instead! That will also be fun.



