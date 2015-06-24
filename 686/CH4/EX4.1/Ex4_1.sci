clc();
clear;

// To measure an unsteady state temperature with a thermometer and half value time

// Half value time is the time within which the initial difference etween the true and indicated temperature is reduced to half its initial value

l = 0.01/2;                          // Length of cylindrical tube in ft
a = 0.178;                           // Thermal diffusivity in ft^2/hr
k = 5;                               // Thermal conductivity in Btu/hr-ft-F
h = 10;                              // Heat transfer coefficient in Btu/hr-ft^2-F
Bi = h*l/k;                          // Biot number

// For half time
th = 0.693*l*l*3600/(Bi*a);          // Half time in hr

printf("The half time for unsteady change temperature change is %d sec",th);
