clc
// Intialization of variables
U = 0.40 // N.s/m^2
l = 10 //m
Q = 2.0*(10^-5) // m^3/s
D = 0.020 // m
g = 9.81 // m/s^2
d = 900 // kg/m^3
//Calculations
Dp = 128*U*l*Q/(%pi*(D^4)) 
T = asin(-128*U*Q/(%pi*g*d*(D^4))) 
T1 = T*360/(2*%pi)
// results
printf (" the differnce in pressure is %.1f Pa",Dp/1000)
printf (" the angle made is %.2f degrees ",T1)
