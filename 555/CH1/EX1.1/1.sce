// Implementation of example 1.1
// Basic and Applied Thermodynamics by P.K.Nag
// page 20
clc
clear

z=562 // (difference in height of mercury in two limbs in mm)
g=9.79 // (acceleration due to gravity in m/s^2)
z0=761 // (barometer reading in mm Hg)
d=13640 // (density of mercury in kg/m^3)

// p= p0 + (d*g*z) & p0=(d*g*z)so
p=(d*g)*(z+z0)/1000; // division by 1000 is done to convert mm to m
p=(p/100000); // here division by 100000 is done to convert kPa to atm
printf("The gas pressure = %.2f bar",p);
// end