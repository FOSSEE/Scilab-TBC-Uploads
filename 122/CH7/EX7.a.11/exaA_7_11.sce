// Example A-7-11
// Nyquist Plot

clear; clc;
xdel(winsid());  //close all windows

s = %s /2 /%pi;
num = 20 * ( s^2 + s + 0.5);
den = s * (s + 1) * (s + 10);
G = syslin('c',num,den);

a = gca();
a.clip_state = 'on';
nyquist(G,-1000,1000);
xgrid(color('gray'));
a.data_bounds = [-2 -3 ; 3 3];
a.box = 'on';

