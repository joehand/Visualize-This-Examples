#Chapter 5: Visualizing Proportions

##Part 1: Simple Pie Chart
Not much to say here. Just a simple illustrator exercise: 

![Final pi](https://github.com/joehand/Visualize-This-Examples/raw/master/ch5/pi_chart.png "Flowing Data Survey") 

And, after adding one layer with a circle and some text we get a simple donut chart:

![Final Donut](https://github.com/joehand/Visualize-This-Examples/raw/master/ch5/donut_chart.png "Flowing Data Survey - Donut")

##Part 2: Donut with Html & JS!
Finally, getting to some javascript! The book uses the [Protovis JS library](http://mbostock.github.com/protovis/). This is no longer being developed as of June 2011. I will be following the examples with Protovis but also duplicating them with [D3](http://d3js.org/), the new visualization library by the Protovis team.

There will be more comments in the source from here on out.

Protovis is pretty cool. Makes it easy!

###Moving to D3
Okay, moving it to D3 was harder than I expected. It seems like everything in d3 is manipulated directly where there used to be APIs in protovis. It is definitely nicer but it was not a simple transfer. The key was finding a helpful [example](http://bl.ocks.org/1305337).

Hopefully - now that I have a better idea of the differences - moving forward going from Protovis to D3 will be easier.

You can see the working example in in this [block](http://bl.ocks.org/2848073). They look almost the same.