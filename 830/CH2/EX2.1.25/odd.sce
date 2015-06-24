//Graphical//
//Implementation of Equation 2.1.25 in Chapter 2
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 51
clear;
clc;
close;
n = -5:5;  
x1 = [0 1 2 3 4 5]; 
x = [-x1($:-1:2),x1];
a=gca();
a.thickness = 2;
a.y_location = "middle";
a.x_location = "middle"
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of ODD Signal','             n','              x[n]');
