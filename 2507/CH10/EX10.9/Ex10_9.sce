clc
clear
printf("Example 10.9 | Page number 355 \n\n");
//Find thermodynamic properties
//Given data
t = 250 //°C 
h = 2855.8 //kJ/kg
//From superheated property table
p = 3e6 //Pa
v = 0.07058 //m^3/kg
s = 6.2871 //kJ/kgK
u = h - p*v*.001 //kJ/kg
printf("Pressure = %.1f MPa\n",p*1e-6)
printf("Volume per kilogram of water = %.6f m^3/kg\n",v)
printf("Enthalpy per kilogram of water = %.1f kJ/kg\n",h)
printf("Entropy per kilogram of water = %.4f kJ/kgK\n",s)
printf("Internal energy per kilogram of water = %.1f kJ/kg\n",u)

