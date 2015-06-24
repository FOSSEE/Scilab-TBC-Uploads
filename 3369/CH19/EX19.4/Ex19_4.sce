//Chapter 19,Example 4,page 670
//Determine the vertical displacement of the drop
clear
clc
d = 0.03*10^-3 // m
p = 2000 // kg/m^3
q = 100*10^-15 // C
V0 = 3500 // V
d2 = 2*10^-3 // m
L1 = 15*10^-3 // m
L2 = 12*10^-3 // m
Vz = 25 // m/s

m = 4/3*%pi*(1/2*d)^3*p
t0 = L1/Vz
Vx0 = q*V0*t0/(m*d2)
x0 = 1/2*Vx0*t0
t1 = (L1+L2)/Vz
x1 = x0+Vx0*(t1-t0)

printf("\n The vertical displacement of the drop = %e m",x1)
 
// Answers may vary due to round off error
