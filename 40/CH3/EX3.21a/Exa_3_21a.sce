//convolution of finite length signals
clear;close;clc;
max_limit=10;
h=[1 2 2 3];
n2=0:length(h)-1;
x=[2 -1 3];
n1=0:length(x)-1;
y=convol(x,h);
n=0:length(h)+length(x)-2;
a=gca();
subplot(211);
plot2d3('gnn',n2,h)
xtitle('impulse Response','n','h[n]');
a.thickness=2;
a.y_location="origin";
a=gca();
subplot(212);
plot2d3('gnn',n1,x)
a.y_location="origin";
a.x_location="origin";
xtitle('input response','n','x[n]');
xset("window",2);
a=gca();
plot2d3('gnn',n,y)
a.y_location="origin";
xtitle('output response','n','y[n]');

