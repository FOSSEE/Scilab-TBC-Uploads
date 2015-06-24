clear;
clc;
n=0:10;
alpha=.5;
x=ones(n);
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
b=gca();
N=0:20;
a=find(N==7)
plot2d3(N(1:a),y(1:a)) 
plot(N(1:a),y(1:a),'r.')
xtitle('Output Response','n','y[n]');
b.children.children.thickness = 3;
b.children.children.foreground= 2;