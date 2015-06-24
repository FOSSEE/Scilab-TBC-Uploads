//Chapter 3
//Example 6
//PAge 51

clear;clc;

max_dem=15000;
lf=0.5;
pcf=0.4;

//reserve capacity
e_per_annum=max_dem*lf*8760;
printf("Energy generated per annum = %.0f kWh \n\n", e_per_annum)
pc=e_per_annum/pcf/8760;
printf("Plant capacity =%.0f kW \n\n", pc)
printf("Reserve capacity =%.1f kW \n\n", pc-max_dem);
