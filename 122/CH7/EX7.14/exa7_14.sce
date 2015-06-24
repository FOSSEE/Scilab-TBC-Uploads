// Example 7-14
// Nyquist Stability Check

clear; clc;
xdel(winsid());  //close all windows

s = %s;
T1 = 5; T2 = 10;

K = 1;
den = (T1*s + 1)*(T2*s + 1); 
GH = syslin('c',K,den);
nyquist(GH,-1000,1000);
xgrid(color('gray'));
