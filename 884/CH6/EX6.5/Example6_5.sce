//amount of heat absorbed

clear;
clc;

printf("\t Example 6.5\n");

m=466;//mass in g
s=4.184;//specific heat in J/g C
deltaT=74.6-8.5;//change in temp, C/K
q=m*s*deltaT;//amount of heat absorbed, kJ

printf("\t the amount of heat absorbed is : %4.0f kJ\n",q);

//End
