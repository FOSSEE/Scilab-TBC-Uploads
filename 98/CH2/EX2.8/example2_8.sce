//Chapter 2
//Example 2_8
//Page 23

clear;clc;

h=100;
n_hydraulic=0.86;
n_electrical=0.92;

n_overall=n_hydraulic*n_electrical;
w=9.81*1e3;
printf("Weight of water available = %.1f N \n\n", w);
power=w*h*n_overall;
printf("Power produced = %.1f kW \n\n", power/1000);
printf("Energy produced per hour = %.1f kWh \n\n", power/1000);
