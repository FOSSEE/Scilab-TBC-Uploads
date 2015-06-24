//Chapter 3,Example 3.3 Page 107
clc
clear
R = 1
C = 15*10^-6
L = 2*10^-3
V = 125 // kV
v = R/2*sqrt(C/L)
pow = -v*asin(sqrt(1-v^2))/sqrt(1-v^2)
e = exp(pow)
Imax = 2*V*v*e
t1 = sqrt(L*C)*asin(sqrt(1-v^2))/sqrt(1-v^2)
// based on trila and error t2=1275 micro sec
t2 = 1275 // micro sec
RHS = 0.5286*sin(t2/173.2)
printf (" Imax = %f KA \n ",Imax)
printf (" t1 = %f micro sec \n ",t1*10^6)
printf (" t2 = %f micro sec \n ",t2)
printf (" RHS = %f \n ",RHS)
printf ("Therefore, time to 50 percent value is 1275 μ sec")



