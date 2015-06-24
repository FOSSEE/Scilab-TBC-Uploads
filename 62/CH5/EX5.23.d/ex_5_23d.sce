//frequency shifting
clear;
clc;
close;
dt=.1;
w0=2;//positive number
t=-10:dt:10;
x=cos(w0*t);//or 1/2*(exp(-j*w*t)+exp(j*w*t))
a=gca();
plot(t,x);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
wmax=10;
w=-wmax:0.1:wmax;
Xw=x*exp(-%i*(w'*t))*dt;
figure
a=gca();
plot2d3(w,round(abs(Xw/10)));
poly1=a.children.children;
poly1.thickness=2;
poly1.foreground=2;
xtitle('X(w)','w')
