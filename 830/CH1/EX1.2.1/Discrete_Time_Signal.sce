//Graphical//
//Implementation of Equation 1.2.1 in Chapter 1
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 9

clear; clc; close;
n = 0:10;
x = (0.8)^n;
//plot2d4(n,x)
a=gca();
a.thickness = 2;
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Discrete Time Signal','n','x[n]');
