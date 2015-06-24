clc
clear
printf("Example 5.9 | Page number 130 \n\n");
//Find inlet air temperature
V1 = 300 //m/s //inlet air velocity
t2 = 100 //°C //exit air temperature
V2 = 15 //m/s //exit air velocity
//Solution
t1 = t2 + .001*(V2^2 - V1^2)/2 // °C //inlet air temperature
printf("Inlet air temperature = %.1f °C",t1)
