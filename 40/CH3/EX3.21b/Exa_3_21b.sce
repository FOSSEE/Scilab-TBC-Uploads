clear;close;clc;
max_limit=10;
h=[2 5 0 4];
n2=-2:length(h)-3;
x=[4 1 3];
n1=-1:length(x)-2;
y=convol(x,h);
n=-3:length(x)+length(h)-5;
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
xtitle('input response','n','x[n]');
xset("window",1);
a=gca();
plot2d3('gnn',n,y)
a.y_location="origin";
a.x_location="origin";
xtitle('output response','n','y[n]');
