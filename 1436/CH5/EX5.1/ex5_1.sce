// Example 5.1, page no-310
clear
clc
//(i)
d=75*10^-3
a=3.141*d^2/4
v=760*10^-3
Q=v*a
Q=Q*10^3
printf("(i)\nVolume Flow Rate Q=%.3f *10^-3 m^3/sec",Q)
rho=1000
W=rho*Q*10^-3
printf("\n(ii)\nMass Flow rate W=%.3f kg/sec",W)
