//Chapter 3
//Example 3_4
//PAge 50

clear;
clc;

max_dem=25;
lf=0.6;
pcf=0.5;
puf=0.72;

//reserve capacity
avg_dem=lf*max_dem;
pc=avg_dem/pcf;
printf("(i)\t Reserve capacity of plant = %.1f MW \n\n", pc-max_dem);
printf("(ii)\t Daily energy produced = %.1f MWh \n\n", avg_dem*24);
printf("(iii)\t Maximum energy produced = %.1f MWh/day \n\n", avg_dem*24/puf);
