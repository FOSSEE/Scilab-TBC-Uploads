//signals and systems
//fourier analysis of discrete time signals
//Example5.5:Discrete Time Fourier Transform:x[n]= sin(nWo)
clear;
clc;
close;
N = 0.1;
Wo = %pi;
W = [-Wo/10,0,Wo/10];
XW =[0.5,0,0.5];
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
disp(Wo/10)