//EXAMPLE 2.28,graphical representation of convolution of x & h.
clear;
clc;
x=[-2 0 1 -1 3];
disp(x,'x');
h=[1 2 0 -1];
disp(h,'h');
n=0:7;
y=convol(x,h);
disp(y,'convolution = ');
clf();
figure(0);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3(n,y)
plot(n,y,'r.')
xtitle('convolution','n','Y');
a.children.children.thickness=2;
a.children.children.foreground=2;
