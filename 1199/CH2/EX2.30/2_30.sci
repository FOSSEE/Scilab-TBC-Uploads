// 2.30
clc;
Se_thermocouple=500-(-72);
printf("Sensitivity of thermocouple= %.1f micro V/degree C",Se_thermocouple)
Vo=Se_thermocouple*100*10^-6;
printf("\nMaximum output voltage= %.2f V ",Vo)