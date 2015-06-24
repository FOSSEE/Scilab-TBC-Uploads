clc
clear
printf("Example 5.4 | Page number 123 \n\n");
//Find inlet and exit velocities

//Given Data
d1 = 0.15 //m //inlet diameter
m = 4000/3600 // kg/s //flow rate
v1 = 0.285 //m^3/kg //specific volume at entry
d2 = 0.25 //m //exit diameter
v2 = 15 // m^3/kg //specific volume at exit

//Solution

A1 = %pi*d1^2/4 //m^2 //inlet cross sectional area
A2 = %pi*d2^2/4 // m^2 // exit cross sectional area
printf("Inlet cross sectional area (A1)= %.5f m^2\n",A1);
printf("Exit cross sectional area (A2)= %.5f m^2\n",A2);

V1 = m*v1/A1 //m/s //inlet velocity
V2 = m*v2/A2 //m/s //exit velocity

printf("\nInlet velocity = %.1f m/s",V1);
printf("\nExit velocity = %.1f m/s",V2);
