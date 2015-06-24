//signals and systems
//time shifting
clear
close
clc
t=[-4:0.001:4];
a=gca();
plot(t,(exp(-2*t)).*(t>0))
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(t)')
//delaying the function by 1 second we obtain
figure
a=gca();
plot(t,(exp(-2*(t-1))).*((t>1)))
a.thickness=2;
a.y_location="middle";
title=('the signal x(t-1)')
//advancing the function by 1 second we obtain
figure
a=gca();
plot(t,(exp(-2*(t+1))).*(t>-1))
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(t+1)')