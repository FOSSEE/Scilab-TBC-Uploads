//Scilab Code for Example 4.6 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
close;
disp("X(w)=1/(a+jw)^2=1/(a+jw)*1/(a+jw) ");
disp("exp(-a*t)*u(t) <--> 1/(a+jw) ");
disp("therefore x(t)=convolution(2*sinc(2*t),(sinc t)^2");
a=2;
n=1;
for t=-10:0.1:10
y1(1,n)=(sinc(t))^2;
y2(1,n)=2*sinc(2*t);
n=n+1;
z=conv(y1,y2);
end
t=-20:0.1:20;
a=gca();
a.y_location ="origin";
a.x_location ="origin";
plot(t,z);
title('Convolution of x(t) and y(t)')
