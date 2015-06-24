clear;
clc;
n=0:10;
alpha=.5;
betaa=.6;
x=betaa^n;
h=alpha^n;
y=convol(x,h);
figure
a=gca();
a.x_location="origin";
plot2d3(n,h) 
plot(n,h,'r.')
xtitle('Impulse Response','n','h[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
plot2d3(n,x) 
plot(n,x,'r.')
xtitle('Input Response','n','x[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
N=0:20; 
plot2d3(N,y)
plot(N,y,'r.')
xtitle('Output Response','n','y[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;