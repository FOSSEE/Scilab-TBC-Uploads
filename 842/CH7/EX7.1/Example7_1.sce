//clear//
//Example7.1:Sinusoidal signal
clear;
close;
clc;
Wm = 2*%pi;
Ws = 2*Wm;
t = -2:0.01:2;
phi = -%pi/2;
x = cos((Ws/2)*t+phi);
y = sin((Ws/2)*t);
subplot(2,1,1)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t,x)
title('cos(Ws/2*t+phi)')
subplot(2,1,2)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t,y)
title('sin(Ws/2*t)')
