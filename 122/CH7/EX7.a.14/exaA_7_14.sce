// Example A-7-14
// Nyquist plot for positive and negative feedback

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = s^2 + 4*s + 6;
den = s^2 + 5*s + 4;
G = syslin('c',num,den);
H = syslin('c',-1 * num,den);

nyquist(G,-100,100);
nyquist(H,-100,100);
xtitle('Nyquist plot for G(s) and -G(s)');
a = gca(); a.data_bounds = [-2 -1; 2 1];
