clear;
clc;
close;
a=1.5;
dt=.1;
t=0:dt:10;
s=size(t);
x=ones(1,s(2))./(a^2+t^2);
y=[x($:-1:1) x];
t1=-10:dt:10.1;
a=gca();
plot(t1,y);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')

//clf();
wmax=10;
w=0:0.1:wmax;
Xw=x*exp(-%i*(w'*t))*dt;
Xw_mag=(Xw);
Xw_mag=[Xw_mag($:-1:1) Xw_mag];
w=[-w($:-1:1) w];
figure
a=gca()
plot2d(w,Xw_mag);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')