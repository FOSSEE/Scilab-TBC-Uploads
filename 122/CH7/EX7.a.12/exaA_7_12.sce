// Example A-7-12
// Nyquist plot for positive omega

clear; clc;
xdel(winsid());  //close all windows

s = %s /2 /%pi;
num = 20 * ( s^2 + s + 0.5);
den = s * (s + 1) * (s + 10);
G = syslin('c',num,den);

a = gca();
a.clip_state = 'on';
nyquist(G,0.01,1000);
xgrid(color('gray'));
a.data_bounds = [-3 -5 ; 3 1];
a.box = 'on';


