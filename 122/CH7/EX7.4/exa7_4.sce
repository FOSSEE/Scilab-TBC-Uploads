// Example 7-4
// Bode Plot with transport lag

clear; clc;
xdel(winsid());  //close all windows

omega = logspace(-1,1,100);
repf = exp(%i*omega*-0.5) ./ (ones(1,length(omega)) + %i*omega);

bode(omega,repf);
xtitle('Bode plot of G(s) = exp(-0.5jw) / [1 + jw]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');

