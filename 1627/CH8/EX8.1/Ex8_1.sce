clc
//initialisation of variables
p1=5//cm
v=50//m/s
p2=5*10^-2//m
g=9.8//m/s^2
q=9802//N/m^3
//CALCULATIONS
Q=(%pi)*(p2)^2*v/4//m^3/s
F=q*Q*v/g*0.001//kN
//RESULTS
printf('The force exerted on the plate=% f kN',F)
