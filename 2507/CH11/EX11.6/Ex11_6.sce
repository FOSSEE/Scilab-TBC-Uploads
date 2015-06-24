clc
clear
printf("Example 11.6 | Page number 404 \n\n");
//Find pressure exerted using (i) ideal gas equation of state (ii) van der Waals equation of state
//Given data
m = 5//kg //mass of CO2
T = 300 //K
R = 8314.3/44 //J/kgK
V = 1.5 //m^3

//Part(i)
printf("Part(i)\n")
p = m*R*T/V
printf("Pressure exerted by CO2(using ideal gas equation) = %.2f kPa\n\n",p*.001)

//Part(ii)
printf("Part(ii)\n")
R = 8.3143 //J/kmolK
a = 0.3658e3 //kPam^6/kmol^2
b = 0.0428 //m^3.kmol
v = 44*V/m //m^3/kmol
p = T*R/(v-b) - a/v^2
printf("Pressure exerted by CO2(using van der Waals equation) = %.1f kPa\n\n",p)
