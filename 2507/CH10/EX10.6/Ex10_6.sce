clc
clear
printf("Example 10.6 | Page number 353 \n\n");
//Find all properties of steam
//Given Data
p = 12 //bar //pressure of steam leaving boiler
h = 2705 //kJ/kg //Enthalpy of steam
//Solution
//From pressure based saturated property table, at p = 12bar
hf = 798.64 //kJ/kg
hg = 2784.8 //kJ/kg
x = (h-hf)/(hg-hf) //Dryness fraction
v = (1-x)*0.001139 + (x)*0.1633 //m^3/kg
s = (1-x)*2.2165 + (x)*6.5233 //m^3/kgK
u = h - p*v*100 //kJ/kg
printf("Volume per kg water = %.6f m^3/kg\n",v)
printf("Internal energy per kg water = %.1f kJ/kg\n",u)
printf("Entropy per kg water = %.4f kJ/kgK",s)
