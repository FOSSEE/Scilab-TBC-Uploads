clear;
clc;
n=0:10;
alpha=.9;
x=[ zeros(1,length(n)-1) alpha^n];
h=[alpha^-n];
h=[h zeros(1,length(n)-1)];
y=convol(x,h);
figure
a=gca();
a.x_location="origin";
n=-10:10;
plot2d3(n,h) 
plot(n,h,'r.')
xtitle('Impulse Response','n','h[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
a.y_location="origin";
figure
a=gca();
plot2d3(n,x) 
plot(n,x,'r.')
a.y_location="origin";
a.x_location="origin";
xtitle('Input Response','n','x[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
N=-20:20; 
plot2d3(N,y)
plot(N,y,'r.')
a.x_location="origin";
a.y_location="origin";
xtitle('Output Response','n','y[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;