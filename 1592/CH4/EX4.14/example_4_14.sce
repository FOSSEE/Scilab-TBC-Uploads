//Scilab Code for Example 4.14 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
close;
a=.5;
A=1/(sqrt(2)*%pi);
t=-10:0.1:10;
x=A*exp(-a*t.*t);
disp("Guassian pulse signal x(t)=(1/sqrt(2)*%pi)*exp(-a*t^2)");
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
A=1;
f=t;
Xf=A*exp(-2*%pi^2*f^2);
figure(1);
d=gca()
plot(f,Xf);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(f)','f')
