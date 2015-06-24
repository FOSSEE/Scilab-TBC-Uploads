// Example 5.6, page no-312
clear
clc

//(i)
V=0.02
d=10*10^-2
A=%pi*d^2/4
v=V/A
rho=1000
Re=rho*v*d/10^-3
Re=Re/100000
printf("(i)\nReynolds number(Re) = %.3f * 10^5",Re)

//(ii)
Cd=0.98
D=20*10^-2
d=10*10^-2
M=1/sqrt(1-(d/D)^4)
a2=3.14*d^2/4
Q=0.02
g=9.8
X=Q*sqrt(rho)/(M*Cd*a2*sqrt(2*g))
p_diff=ceil(X^2)
printf("\n(ii)\nPressur_difference = %d kg/m^2 = %.4f kg/cm^2",p_diff,p_diff/10000)
