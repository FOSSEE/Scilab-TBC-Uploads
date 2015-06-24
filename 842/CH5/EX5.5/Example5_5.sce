//clear//
//Example5.5:Discrete Time Fourier Transform:x[n]= cos(nWo)
clear;
clc;
close;
N = 5;
Wo = 2*%pi/N;
W = [-Wo,0,Wo];
XW =[%pi,0,%pi];
//
figure
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',W,XW,2);
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
xlabel('                                                      W');
title('DTFT of cos(nWo)')
disp(Wo)
