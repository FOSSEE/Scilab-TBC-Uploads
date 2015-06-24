//Example 15.37
//step response transfer function
clear;clc;
xdel(winsid());

s=%s;
G=syslin('c',25,s^2+4*s+25);
t=0:0.05:5;
y=csim('step',t,G);
plot(t,y)
xtitle('step response 25/(s^2+4*s+25)','t sec','Response');
