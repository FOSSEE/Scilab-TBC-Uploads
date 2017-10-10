clc;
disp("Example 2.7")
// We know the value of volumetric flow rate per unit width from 2.6 which i have copy pasted from the previos example
density= 900
// density of the fluid in kg/m^3
g=9.81
// acceleration due to gravity in m/s^2
m=0.003
//thickness of the film in m
mew= 0.2
// coefficient of friction in ks/m*s
Q= (density*g*m*m*m)/(3*mew)// volumetric flow rate per unit plate width
U=Q/m
disp("Liquid film velocity is  ")
disp(U)
disp(" cm/s")
