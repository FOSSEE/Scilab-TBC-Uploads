//Chapter 7, Example 7.4, Page 186
clc
clear
// Flux density
Sp = 1.295*10**13
r = 100
mew = 0.3222
phimax = 2*10**3
phi = Sp*10^-2/(4*%pi*r**2)
t = -(1/mew)*log(phimax/phi)
printf("phi = %e cm^-2/s^-1\n",phi)
printf(" t = %f cm^-1",t)
//Answers may vary due to round off error
