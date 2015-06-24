clear;
clc;
clf();
xname("--------------Example 3.7----------------");
//display the figure
subplot(121) // time domain plot
a1=gca(); 
a1.y_label.text="Amplitude"; // y-axis
a1.y_label.font_style = 3;
a1.y_label.font_size = 4;
a1.y_label.foreground = 3;
a1.y_location = "left";
a1.x_label.text="Time"; // x-axis 
a1.x_label.font_style = 3;
a1.x_label.font_size = 4;
a1.x_label.foreground = 3;
a1.x_location = "middle";
a1.data_bounds=[0,-15;1,15];
x=[0:.000125:1];
// sine waves to be plotted
plot2d(x,10*sin(8*x)); 
plot2d(x,5*sin(16*x));
plot2d(x,15*sin(%pi/2 - 0*x));
xarrows([.5 .01],[-12 -12],5);
xarrows([.5 .99],[-12 -12],5);
xpoly([1 1],[-3 -12.5]);
xset("font size",3)
xstring(.5,-11,"1s")
xset("font size",2)
xstring(.02,-13.5,"a. Time-domain representation of three sine waves with frequencies 0, 8, and 16")
subplot(122) // frequency domain plot
a1=gca();
xarrows([0 1],[.5 .5],.5)
xarrows([0 0],[.5 1],.5)
xset("font size",3)
xstring(-.01,1,"Amplitude") // y-axis
xstring(1,.45,"Frequency") // x-axis
xstring(.02,.4,"b. Frequency-domain representation of the same three signals")
xstring(0,.45,"0                                          8                                            16")
xstring(-.05,.7,"5")
xstring(-.05,.8,"10")
xstring(-.05,.9,"15")
xset("thickness",2.5)
xpoly([0 0],[.5 .9])
xpoly([.4 .4],[.5 .8])
xpoly([.8 .8],[.5 .7])
xpoly([0 -.01],[.7 .7])
xpoly([0 -.01],[.8 .8])
xpoly([0 -.01],[.9 .9])






