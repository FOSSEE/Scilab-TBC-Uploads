clear;
clc;

//Example - 1.2
//Page number - 8
printf("Example - 1.2 and Page number - 8\n\n");

// Given
P = 1;//[atm] - Atmospheric pressure
P = 101325;//[N/m^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant
T = 30;//[C] - Temperature of air
T = 30+273.15;//[K]
V = 5*5*5;//[m^(3)] - Volume of the room

//The number of moles of air is given by
n = (P*V)/(R*T);//[mol]

//Molecular weight of air(21 vol% O2 and 79 vol% N2)=(0.21*32)+(0.79*28)=  28.84 g/mol
m = n*28.84;//[g]
m = m/1000;//[kg]
printf("The mass of air is, m = %f kg",m);


