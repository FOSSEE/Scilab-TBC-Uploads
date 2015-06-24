// Example 7-11
// Nyquist Plot

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = 1;
den = s * (s + 1);
G = syslin('c',num,den);

scf();
a = gca();
a.clip_state = 'on';   //clip the extra nyquist plot
nyquist(G,-1000,1000);
xgrid(color('gray'));
xtitle('Nyquist plot of G(s) = 1 / (s * (s + 1))');
a.data_bounds  = [-3 -5 ; 3 5];
a.box = 'on';