//Scilab Code for Example 1.11 of Signals and systems by
//P.Ramakrishna Rao
//displaying plots for the given signals
clear;
clc;
for t=-3:1:3
y(t+4)=abs(t+3)*u(t+3)-abs(t+1)*u(t+1)-abs(t-1)*u(t-1)+abs(t-3)*u(t-3);
end
t=-3:1:3;
//for the main given signal
a=gca();
a.x_location="origin";
a.y_location="origin";
plot(t,y);
title('Main Signal)');
dy=0*y;
for i=1:6
dy(i)=(y(i+1)-y(i))/1;
end
//for the derivative of the given signal
figure(1);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d2(t,dy);
title('Derivative of Signal');
dy2=0*dy;
dy2(1)=dy(1)-0;
for i=1:6
dy2(i+1)=(dy(i+1)-dy(i))/1;
end
//for the impulse response representation or second derivative
figure(2);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3(t,dy2,-5);
title('Impulse response representation');
