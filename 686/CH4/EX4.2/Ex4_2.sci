clc();
clear;

// To calculate the lag of thermometer used in initial example while the oven is heating

r = 0.01;                             // Radius of cylindrical tube in ft
a = 0.178;                           // Thermal diffusivity in ft^2/hr
k = 5;                               // Thermal conductivity in Btu/hr-ft-F
h = 2;                               // Heat transfer coefficient in Btu/hr-ft^2-F
s = 400;                             // Rate of temperature change
tlag = r*k*s/(2*a*h);

printf("The lag of thermometer while the oven is heating at the rate of 400F/hr is %.1f F",tlag);

