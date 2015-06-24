// Example A-5-5
// Verifying design to match given response curve

clear; clc;
xdel(winsid());  //close all windows

s = %s;
m = 5.2; // lb / ft^2
b = 12.2;// lb/ft/sec
k = 20;  // lb /ft
G = syslin('c',1,m*s^2 + b*s + k);

STEP = 0.05; t = 0:STEP:7;
u = 2 * ones(1,length(t));
y = csim(u,t,G);
plot(t,y);
xgrid(color('gray'));
xtitle('Step response','t sec','Response');

[m t] = max(y);
Mp = (m - 0.1) /0.1 * 100;
tp = (t - 1) * STEP;
disp(Mp,'Mp (percent) = ');
disp(tp,'tp = ');

