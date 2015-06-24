//Example 15.36
//impulse response transfer function
clear;clc;
xdel(winsid());

s=%s;
G=syslin('c',25,s^2+4*s+25);
t=0:0.05:5;
y=csim('impuls',t,G);
plot(t,y)
xtitle('Impulse response 25/(s^2+4*s+25)','t sec','Response');
