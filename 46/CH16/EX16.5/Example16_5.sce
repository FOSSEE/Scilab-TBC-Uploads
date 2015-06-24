//Example 16.5
clc
s=poly(0,'s');
disp("G=10*(0.5*s+1)*exp(-s/10)/(((s+1)^2)*(0.1*s+1))")
printf("exp(-0.1*s)=(2-0.1*s)/(2+0.1*s)\n)")
G=10*(0.5*s+1)*(2-0.1*s)/(((s+1)^2)*(0.1*s+1)*(2+0.1*s));
Gs=syslin('c',G)
clf
bode(Gs)
