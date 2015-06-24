//Graphical//
//Implementation of Equation 2.1.9 in Chapter 2
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 46
clear;
clc;
close;
a =1.5; 
n =1:10;  
x = (a)^n;
a=gca();
a.thickness = 2;
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Exponential Signal','n','x[n]');
