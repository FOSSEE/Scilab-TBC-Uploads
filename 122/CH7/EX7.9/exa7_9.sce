// Example 7-9
// Polar Plot with transport lag

clear; clc;
xdel(winsid());  //close all windows

T = 10;
L = 100;
omega = logspace(-1,2,1000);
s = %i * omega;
den = s .* (T*s + 1);
num = exp(-1*s*L);
repf = num ./ den;
rad = abs(repf);
theta = atan(imag(repf),real(repf));

polarplot(theta,rad,style = 2);

