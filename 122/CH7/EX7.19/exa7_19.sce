// Example 7-19
// Nyquist plot stability check

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = s + 0.5;
den = s^3 + s^2 + 1;
disp(routh_t(den),'routh table =');  // display the routh table
GbyK = syslin('c',num,den); // open loop system

nyquist(GbyK,-1000,1000);