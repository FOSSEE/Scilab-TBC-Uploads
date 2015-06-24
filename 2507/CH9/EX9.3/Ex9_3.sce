clc
clear
printf("Example 9.3 | Page number 255 \n\n");
//Part(a) Find internal energy
//Part(b) Find enthalpy and internal energy at (i)10bar,50°C and,(ii)0.085 m^3/kg and 50°C

//Given Data
p = 1 //bar //pressure
T = 50+273 //°C //temperature
h = 324.6 //kJ/kg //enthalpy
R = 8.3143 //kJ/kmolK
M = 28.97 //kg/kmol
//Part (a)
printf("Part (a)\n");
u = h - (R/M)*T //kJ/kg //internal energy
printf("Internal energy = %.1f kJ/kg\n",u)
//Part (b)
printf("\nPart (b):(i)\n");
u = h - (R/M)*T //kJ/kg //internal energy
printf("Enthalpy = %.1f kJ/kg\n",h)
printf("Internal energy = %.1f kJ/kg\n",u)
printf("Part (b):(ii)\n");
u = h - (R/M)*T //kJ/kg //internal energy
printf("Enthalpy = %.1f kJ/kg\n",h)
printf("Internal energy = %.1f kJ/kg",u)
