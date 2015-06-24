clear    
clc
disp('Ex-5.3');
x1=0;x2=L;
xavg=(2/L)*integrate('sin(%pi*x/L)^2','x',x1,x2);
printf('The average value of x is found out to be L/2 which apparently is independent of Qunatum state.');