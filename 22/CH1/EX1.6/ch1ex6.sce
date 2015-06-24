//signals and systems
//representation of a signal
clear
close
clc
t=[0:0.1:5];
a=gca();
plot(t,t.*((t>=0)&(t<=2)) - 2*(t-3).*((t>2)&(t<=3)));
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(t)')
//this can be written as a combination of 2 lines
disp("x(t)=x1(t)+x2(t)= tu(t)-3(t-2)u(t-2)+2(t-3)u(t-3)");
