clc
clear
printf("Example 10.3 | Page number 350 \n\n");
//Find volume, enthalpy, internal energy and entropy per kilogram of water
//Given Data
p1 = 200 //kPa //initial pressure
t1 = 100 //°C //initial temperature
ts = 120.23 //°C //saturated steam temperature

//Solution
//From steam table
v1 = 0.001044 //m^3/kg //volume per kilogram of water 
h1 = 419 //kJ/kg //enthalpy per kilogram of water
s1 = 1.3068 //kJ/kg //entropy per kilogram of water
u1 = h1-p1*v1 //kJ/kg //internal energy per kilogram of water
printf("Volume per kilogram of water = %.6f m^3/kg\n",v1)
printf("Enthalpy per kilogram of water = %.1f kJ/kg\n",h1)
printf("Entropy per kilogram of water = %.4f kJ/kgK\n",s1)
printf("Internal energy per kilogram of water = %.1f kJ/kg\n",u1)

