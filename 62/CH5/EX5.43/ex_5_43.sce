clear;
clc;
close;
a=.5;
t=-10:0.1:10;
x=exp(-a*t.*t);
disp("guassian pulse signal x(t)=exp(-a*t^2)");
disp("X(w)=integral(exp(-a*t^2)*exp(-%i*w*t)) w.r.t  dt");
disp("d(X(w))/dw=-%i*w/(2*a)*integral(exp(-a*t^2)*exp(-%i*w*t))");
disp("d(X(w))/dw=-w*X(w)/2a");
disp("solving this we get X(w)=A*exp(-w^2/4a)")
disp("A=sqrt(%pi/a)");
d=gca()
plot(t,x);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
A=sqrt(%pi/a);
w=t;
Xw=A*exp(-w.*w/(4*a));
figure
d=gca()
plot(w,Xw);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')