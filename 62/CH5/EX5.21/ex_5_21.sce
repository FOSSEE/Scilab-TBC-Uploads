clear;
clc;
close;
a=1;
dt=.01;
t=0:dt:10;
x=exp(-a*t);
y=[x($:-1:1) x];
t1=-10:dt:10.01;
a=gca();
plot(t1,y);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
//clf();
//stacksize(10000,100000) 
wmax=10;
w=0:0.01:wmax;
Xw=x*exp(-%i*(w'*t))*dt;
Xw_mag=(Xw);
Xw_mag=[Xw_mag($:-1:1) Xw_mag];
w=[-w($:-1:1) w];
figure
a=gca();
plot2d(w,Xw_mag);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')