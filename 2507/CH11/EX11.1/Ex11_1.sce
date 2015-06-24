clc
clear
printf("Example 11.1 | Page number 394 \n\n");
//Calculate specific volume of propane and ideal gas
//Given data
P = 70e5 //Pa
T = 150 + 273 //K
Z = 0.55 //Compressibility factor
R = 8314.3/44 //J/kgK
//Solution
//For propane
v = Z*R*T/P //m^3/kg
printf("Specific volume for propane = %.6f m^3/kg\n",v)
//ideal gas
v = R*T/P //m^3/kg
printf("Specific volume for ideal gas = %.6f m^3/kg",v)
