//Graphical//
//Implementation of Equation 2.01.09b in Chapter 2
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 46
// a < 0
clear;
clc;
close;
a =-1.5;  
n = 0:10;  
x = (a)^n;
a=gca();
a.thickness = 2;
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Exponential Increasing-Decreasing Signal','n','x[n]');
