// Example A-7-10
// Nyquist Plot with transport lag

clear; clc;
xdel(winsid());  //close all windows


omega = logspace(-2,2,100);
f = omega ./ (2*%pi);
repf = 2.65 * exp(%i*omega*-0.8) ./ (ones(1,length(omega)) + %i*omega);

nyquist(f,repf);
plot(-1,0,'.');
xstring(-0.9,0,'passes -1',0,1);