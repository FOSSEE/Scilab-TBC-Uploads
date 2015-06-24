// Example 7-10
// Nyquist Plot

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = 1;
den = s^2 + 0.8*s + 1;
G = syslin('c',num,den);

nyquist(G,-1000,1000);
xgrid(color('gray'));
xtitle('Nyquist plot of G(s) = 1 / (s^2 + 0.8*s + 1)');

// Note: nyquist function plots frequencies -1000 and 1000 in Hz and not in rad/s