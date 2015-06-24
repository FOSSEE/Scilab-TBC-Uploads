//Analytical evaluation of Discrete Convolution
clear;close;clc;
max_limit=10;
h=ones(1,max_limit);
n2=0:length(h)-1;
x=h;
n1=-length(x)+1:0;
y=convol(x,h);
n=-length(x)+1:length(h)-1;
a=gca();
subplot(211);
plot2d3('gnn',n2,h)
xtitle('impulse Response','n','h[n]');
a.thickness=2;
a.y_location="origin";
subplot(212);
plot2d3('gnn',n1,x)
a.y_location="origin";
xtitle('input response','n','x[n]');
xset("window",1);
a=gca();
plot2d3('gnn',n,y)
xtitle('output response','n','y[n]');

