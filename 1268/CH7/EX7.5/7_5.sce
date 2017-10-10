clc;
disp("Example 7.5")
delD= 250 // difference of the 2 densities in kg/m^3
density= 1000 // of water in kg/m^3
mew= 0.001 // in kg/ms
d=1.25e-3 // in m
e= 0.4 // porosity
g=9.81
phi=1
// we get an equation for velocity
// a*u^2+b*u+c=0 where we calculate a,b and c as----
c=-g*delD
b= (150*mew*(1-e))/(d*d*e*e*e*phi*phi)
a=1.75*density/(phi*d*e*e*e)
p=[a,b,c]
z=roots(p)
disp(z(2,1),"Fluidization velocity is ")
