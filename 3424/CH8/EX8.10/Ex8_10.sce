clc
//Initialization of variables
d = 789 //kg/m^3
Q = 0.003 //m^3/s
D = 0.06 //m
u = 1.19*(10^-3) // N.s/m^2
//Calculations
Re = 4*d*Q/(%pi*D*u)
d0 = (1.20*(10^-5))^0.5 //m  Assumed value
B = d0/D 
d1 = (((1.20*(10^-3))*(1-(0.577)^4)^0.5)/0.972)^0.5 // exact value
// results
printf (" the precise value of d is %.1f mm ",d1*10^3)
 
