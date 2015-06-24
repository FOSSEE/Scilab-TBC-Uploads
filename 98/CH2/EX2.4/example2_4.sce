//Chapter 2
//Example 2.4
//Page 17

clear;
clc;

w=13500;
kWh1=7.5;
c=5000;
kWh2=2.9;
hours=8;

//limiting value
printf("Limiting value =%.2f kg \n\n", (w+kWh1)/(c+kWh2));

//coal consumption per hour

printf("Coal consumption per hour = %.1f kg \n\n", c/hours);

