// Implementation of example 1.2
// Basic and Applied Thermodynamics by P.K.Nag
// page 21

clc
clear

gp=1.4d6 // (gauge pressure in Pa)
z=710 // (vacuum in mm Hg)
z0=772 // (barometric pressure in mm Hg)
d=13.6d3 // (density of mercury)

p0=(d*g*z0)/1000; // division by 1000 is done to convert mm to m
sp=(gp+p0);
sp=sp/1d6;
printf("Inlet steam pressure = %.2f Mpa",sp);
printf("\n");
cp=(z0-z)*(g*d)/1000; // division by 1000 is done to convert mm to m
cp=cp/1000; // division by 1000 is done to convert Pa to kPa
printf("Condenser pressure = %.2f kPa",cp);
// end