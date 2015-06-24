//Graphical//
//Implementation of Eample 2.1.2 in Chapter 2
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 52


clear;
clc;
close;

x = [0 0 0 -1 0 1 2 3 4 5 5 5 5 5];

x1 =  [0 0 0 x];        //x(n-3)

x2 =[x 0 0];            //x(n+2)
 

a=gca();
a.thickness = 2;
a.y_location = "middle";
a.x_location = "middle"

subplot(3,1,1)
a=gca();
a.thickness = 2;
a.y_location = "middle";
a.x_location = "middle"
plot2d3('gnn',1:length(x),x) 
xtitle('Graphical Representation of signal x',' ---> n',' --->x[n]');

subplot(3,1,2)
a=gca();
a.thickness = 2;
a.y_location = "middle";
a.x_location = "middle"
plot2d3('gnn',x1)
xtitle('Graphical Representation of signal delayed version of x',' ---> n',' --->x[n-3]');

subplot(3,1,3)
a=gca();
a.thickness = 2;
a.y_location = "middle";
a.x_location = "middle"
plot2d3('gnn',x2)
xtitle('Graphical Representation of signal advanced version of x',' ---> n',' --->x[n+2]');
