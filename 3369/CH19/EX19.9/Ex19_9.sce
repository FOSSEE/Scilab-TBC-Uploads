//Chapter 19,Example 9,page 677
//Determine the position of the particle 
clear
clc
V = 120*10^3 // applied voltage in V
d = 0.6 //  space b/w the plates in m
vd = 1.2 // vertical dimention in m 
qm = 10*10^-6 // charge to mass C/kg 
y = 4.9

t0 = sqrt(vd/y)
// based on eq 19.51 and 19.52
dx2 = qm*V/d
x = t0^2
printf("\n Velocity = %d m/s2",dx2)
printf("\n Position of the particle = %f m",x)

// Answer may vary due to round off error
