clc;
disp("Example 2.6")
density= 900
// density of the fluid in kg/m^3
g=9.81
// acceleration due to gravity in m/s^2
m=0.003
//thickness of the film in m
mew= 0.2
// coefficient of friction in ks/m*s
Q= (density*g*m*m*m)/(3*mew)// volumetric flow rate per unit plate width

Re=(4*Q*density)/mew
disp("Volumetric flow rate is  ")
disp(Q)
disp(" m^3/m/s  and it is in the laminar regime.")
