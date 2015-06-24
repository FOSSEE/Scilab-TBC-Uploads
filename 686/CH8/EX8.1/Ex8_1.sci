clc();
clear;

// To find the amount of heat transferred to the air 

Tw = 200;                         // Wall temperature in F
delp = 14.2;                      // Pressure pressure in lb/in^2
d = 0.8/12;                       // Diameter in ft
R = delp*%pi*d^2/4;               // resistance of tube
Tb = 137;                         // bulk temperature of wall in F

q = R*32.2*0.24*3600*(Tw-Tb)/100;      // Heat loss in Btu/hr
printf("The heat loss from the tube well to the air when the plate is heated to a temperature of 200 F is %d Btu/hr",q);






 