clc
clear
printf("Example 10.8 | Page number 355 \n\n");
//Find all thermodynamic property of steam
//Given data
p = 10e6 //Pa
t = 550 //°C
//Solution
//From superheated property table
v_500 = 0.03279 //m^3/kg
v_600 = 0.03837 //m^3/kg
v_550 = v_500 + (v_500-v_600)/(500-600)*(550-500) //m^3/kg
h_500 = 3373.6 //kJ/kg
h_600 = 3625.3 //kJ/kg
h_550 = h_500 + (h_500-h_600)/(500-600)*(550-500) //kJ/kg
s_500 = 6.5965 //kJ/kgK
s_600 = 6.9028 //kJ/kgK
s_550 = s_500 + (s_500-s_600)/(500-600)*(550-500) //kJ/kgK
printf("Volume per kg water = %.6f m^3/kg\n",v_550)
printf("Enthalpy per kg water = %.1f kJ/kg\n",h_550)
printf("Entropy per kg water = %.4f kJ/kgK",s_550)

