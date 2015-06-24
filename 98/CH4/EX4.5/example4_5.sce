//Chapter 4
//Example 4_5
//Page 76

clear;clc;

ic=50000;
units=220*1e6;
afc_per_kW=160;
rc_per_kWh=0.04;

afc=afc_per_kW*ic;
arc=rc_per_kWh*units;
tac=afc+arc;
cpu=tac/units;

printf("Annual fixed charges = Rs. %.0f \n\n", afc);
printf("Annual running charges = Rs. %.0f \n\n", arc);

printf("Total annual charges = Rs. %.0f \n\n", tac);
printf("Cost per unit = Rs. %.5f \n\n", cpu);
