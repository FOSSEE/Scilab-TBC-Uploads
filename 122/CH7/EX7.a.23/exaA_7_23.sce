// Example A-7-23
// Nichols plot

clear; clc;
xdel(winsid());  //close all windows

s = %s;
G = syslin('c',9 , s*(s+0.5)*(s^2 + 0.6*s + 10) );
black(G);
chart([8 -4],[],list(1,0));
xgrid(color('gray'));
