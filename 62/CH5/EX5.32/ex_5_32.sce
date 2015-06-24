clear;
clc;
close;
disp("X(w)=1/(a+jw)^2=1/(a+jw)*1/(a+jw) ");
disp("exp(-a*t)*u(t) <--> 1/(a+jw) ");
disp("therefore x(t)=convolution(exp(-a*t)*u(t),exp(-a*t)*u(t))");
a=2;
t=0:0.1:10;
y=exp(-a*t);
z=convol(y,y);
disp("t*exp(-a*t)*u(t) <--> 1/(a+jw)^2 ");
t1=[-t($:-1:2) t];
a=gca()
plot(t1,z);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')