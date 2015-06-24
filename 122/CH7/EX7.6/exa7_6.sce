// Example 7-6
// Bode Plot in rad/s
// Plots made with angular freuqency - rad/s on the x-axis

clear; clc;
xdel(winsid());  //close all windows

s = %s / 2 / %pi;  //correction to get frequency axis in rad/s
num = 9 * (s^2 + 0.2*s + 1);
den = s * (s^2 + 1.2*s + 9);
G = syslin('c',num,den);
              
bode(G,0.01,100);
xtitle('Bode plot of G(s) = 9*(s^2 + 0.2*s + 1) / s*(s^2 + 1.2*s + 9)','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');


