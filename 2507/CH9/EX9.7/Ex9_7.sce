clc
clear
printf("Example 9.7 | Page number 270 \n\n");
//Part(a) How many kilograms of nitrogen are stored in the bottle
//Part(b) (i) Find temperature of nitrogen at maximum pressure,(ii)increase in internal energy (iii)increase in enthalpy (iv)increase in entropy of nitrogen
//Given Data
p1 = 10e6 //N/m^2 //initial pressure
T1 = 273+27 //K //inital temperature
V1 = 50e-3 //m^3 //inital volume
M = 28 //g/mol //molecular mass
R = 8314.3/M //J/kgK
y = 1.4 //gamma

//Solution
//Part(a)
printf('Part(a)\n');
m = (p1*V1)/(R*T1)
printf("Mass of nitrogen stored in bottle = %.3f kg\n\n",m)

//Part(b):(i)
printf('Part(b):(i)\n');
p2 = 15e6 //N/m^2 //final pressure
V2 = V1 //m^3 //final volume
T2 = (p2*V2)/(m*R)
printf("Temperature of nitrogen at maximum permitted temperature = %.1f K\n\n",T2)

//Part(b):(ii)
printf('Part(b):(ii)\n');
C = [1, -1.4;1, -1]\[0;R] //J/kgK //C = [Cp;Cv]
delta_U = m*C(2)*(T2-T1)*.001 //kJ //Change in internal energy
printf("Change in internal energy = %.1f kJ\n\n",delta_U)

//Part(b):(iii)
printf('Part(b):(iii)\n');
delta_H = m*C(1)*(T2-T1)*.001 //kJ //Change in enthalpy
printf("Change in enthalpy = %.1f kJ\n\n",delta_H)

//Part(b):(iv)
printf('Part(b):(iv)\n');
delta_S = m*(C(2)*log(T2/T1)+R*log(V2/V1))*.001 //kJ/K //Change in entropy
printf("Change in entropy = %.4f kJ/K",delta_S)
