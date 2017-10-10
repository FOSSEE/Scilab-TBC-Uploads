//Chapter 9, Example 9.3, Page 245
clc
clear
//Find fluence and H
Sp = 10**9
dt = 600
r = 1500
E = 0.03103
phi = Sp*dt/(4*%pi*r**2)
H = 1.602*10**-10*E*phi
printf("fluence = %e cm^2\n",phi)
printf(" H = %f microSv\n",H*10**8)
// Answer may vary due to round off error
