//example 2.3a pg.no.14
clear;clc;close;
n=-2:2;
x1=[4 -2 4 -6 0];
x2=0.5*x1//x[n]
x3=0.5*[x1(length(x1):-1:1)];//x[-n]
xe=(x2+x3);//even part
xo=(x2-x3);//odd part
a=gca();
a.thickness=2;
a.x_location="middle";
a.y_location="middle";
plot2d3('gnn',n,xe,rect=[-4 -6 4 6])
xtitle('graphical representation of even part of x[n]','n','x[n]')
xset('window',1)
b=gca();
b.thickness=2;
b.y_location="middle";
b.x_location="middle";
plot2d3('gnn',n,xo,rect=[-2 -4 2 4])
xtitle('graphical representation of odd part of x[n]','n','x[n]')
