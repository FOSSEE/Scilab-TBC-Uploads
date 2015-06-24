// Example A-5-11
// Unit Step Response for different systems for different zeta,wn

clear; clc;
xdel(winsid());  //close all windows

zeta = [0.3 0.5 0.7 0.8];
wn   = [1 2 4 6];
n    = wn .^ 2;
sigma= 2 .* zeta .* wn;

s = %s;
t = 0:0.1:10;
for i= 1:4
z(i,:) = csim('step',t,syslin('c', n(i), s^2 + sigma(i)*s + n(i) )); 
end

plot(t,z);  // 2d plot of step responses

xtitle('Plot of step response curves with different wn and zeta','t sec','Response');
xgrid(color('gray'));
legend('(zeta,wn) = (0.3 , 1)','(0.5 , 2)','(0.7 , 4)','(0.8 , 6)');
