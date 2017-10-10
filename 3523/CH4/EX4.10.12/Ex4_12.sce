//Example 12// Ch 4
clc;
clear;
close;
// given data
V = 200;//alternating voltage in kV(rms)
x = 0.1;//uniform gap in meters
f = 50;//frequency of voltage in Hz
k = 1.4*10^-4;//mobility of positive ions in m2/s.V
Ea = V*sqrt(2)*10^3/x;//alternating field in V/m
printf("alternating field %e V/m",Ea)
w = k*Ea/(2*%pi*f);
t = sinm(x/w)/314;
printf("travel time of positive ions from one electrode to other %f sec",t)
fmax = k*Ea/(2*%pi*x)
printf("maximum frequency that can be applied %f Hz",fmax)
