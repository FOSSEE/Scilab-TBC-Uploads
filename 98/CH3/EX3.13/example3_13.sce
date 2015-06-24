//Chapter 3
//Example 3_13
//Page 55

clear;clc;

peak=3000;
area=12;
area_per_cm=1000;
peak_time=15;

ad=area_per_cm*2*area/24;
printf("Average demand = %.0f kW \n\n", ad);
lf=area_per_cm/peak*100;
printf("Load factor = %.2f %% \n\n", lf);
