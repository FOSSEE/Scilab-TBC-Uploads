// Example A-7-8
// Stability check

clear; clc;
xdel(winsid());  //close all windows

s = %s;
K = 2;
P = s*(s+1)*(2*s+1) + K;
disp(routh_t(P))
// unstable since two roots are in RHP