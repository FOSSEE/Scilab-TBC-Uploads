//signals and systems
//representation of a signal
clear
close
clc
t=[-2:0.1:5];
a=gca();
plot(t,2.*((t>=-1.5)&(t<0))+2*exp(-t/2).*((t>=0)&(t<3)));
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(t-1)')
//this is a cobination of a constant function and an exponential function
disp("x(t)=x1(t)+x2(t)= 2u(t+1.5)-2(1-exp(-t/2))u(t)-2exp(-t/2)u(t-3)");
