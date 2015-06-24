//Graphical//
//Implementation of Equation 2.1.24 in Chapter 2
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 51

clear; clc; close;
n = -7:7;  
x1 = [0 0 0 1 2 3 4];
x = [x1,5,x1(length(x1):-1:1)];
a=gca();
a.thickness = 2;
a.y_location = "middle";
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Even Signal','n','x[n]');
