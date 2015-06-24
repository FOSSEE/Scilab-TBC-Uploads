//Graphical//
//Implementation of Equation 2.1.09c in Chapter 2
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 46
// a < 1
clear;
clc;
close;
a =0.5; 
n = 0:10;  
x = (a)^n;
a=gca();
a.thickness = 2;
a.x_location = "middle";
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Exponential Decreasing Signal','n','x[n]');
