// Example 5-5
// Impulse Response of a Second Order System

clear; clc;
xdel(winsid()); //close all windows

s = %s;
G = syslin('c', 1, s^2 + 0.2*s + 1);

t = 0:0.5:50;
y = csim('impuls',t,G);
plot(t,y);
xtitle('Impulse Response of 1/ (s^2 + 0.2*s + 1)','t sec','Response');
xgrid(color('gray'));


