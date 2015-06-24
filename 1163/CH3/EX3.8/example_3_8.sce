clear;
clc;
clf();
xname("--------------Example 3.8----------------");
a1=gca();
// define the properties of the axes
a1.x_location = "middle";
a1.x_label.text="Time"; // display the quantity along x-axis
a1.x_label.font_style = 3;
a1.x_label.font_size = 5;
a1.x_label.foreground = 3;
a1.title.text="A Composite Periodic Signal"  // display title
a1.title.foreground = 12;
a1.title.font_size = 6;
x=[0:.001:10]; // x-range
plot2d(x,sin(x)+3*sin(3*x)+sin(9*x)+sin(15*x)); // equation to be plotted
