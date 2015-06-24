//Chapter 3
//Example 3_5
//PAge 51

clear;clc;

ic=1500;
ce=750;
dp=100;
dl=450;
max_dem=2500;
e_per_year =45e5;

//diversity factor and annual load factor
printf("Diversity factor = %.2f \n\n", (ic+ce+dp+dl)/max_dem);
avg_dem = e_per_year/8760;
printf("Average demand = %.2f kW \n\n", avg_dem);
printf("Load factor = %.1f %% \n\n", avg_dem/max_dem*100);
