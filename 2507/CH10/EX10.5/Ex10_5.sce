clc
clear
printf("Example 10.5 | Page number 352 \n\n");
//Find properties of water
//Given data
t = 50 //°C //temperature of water
h = 209.31 //kJ/kg
//Solution
//From saturated property table
p = 12.35 //kPa
v = 0.001012 //m^3/kg
u = h - p*v //kJ/kg
s = 0.7037 //kJ/kg
printf("Pressure = %.2f kPa\n",p)
printf("Volume per kg water = %.6f m^3/kg\n",v)
printf("Internal energy per kg water = %.1f kJ/kg\n",u)
printf("Entropy per kg water = %.4f kJ/kgK",s)
