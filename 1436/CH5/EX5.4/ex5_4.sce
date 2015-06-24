// Example 5.4, page no-311
clear
clc
Cd=0.61
D=40*10^-3
d=20*10^-3
M=1/sqrt(1-(d/D)^4)
//printf("%.4f\n",M)
V2=10
rho=1000
g=9.8
X=V2*sqrt(rho/(2*g))/(Cd*M)
p_diff=X^2

p_diff=floor(p_diff/100)
p_diff=p_diff/100
printf("P1-P2 = %.2f kg/cm^2",p_diff)
