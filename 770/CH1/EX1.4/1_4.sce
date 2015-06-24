clear;
clc;

//Example - 1.4
//Page number - 17
printf("Example - 1.4 and Page number - 17\n\n");

//(a)
//Given
V = 9;// [m/s] - velocity
d = 1;//[m] - diameter
A = 3.14*(d/2)^(2);//[m^(2)] - area
P = 1;//[atm] - pressure
P = 101325;// [N/m^(2)]
T = 300;//[K] - Temperature
R =  8.314;//[J/mol*K] - Universal gas constant

E = (V^(2))/2;//[J/kg]
printf(" (a).The wind energy per unit mass of air is %f J/kg\n",E);

//(b)
// Molecular weight of air(21 vol% O2 and 79 vol% N2)=(0.21*32)+(0.79*28)=  28.84 g/mol
M = 28.84*10^(-3);//[kg/mol]
r = (P*M)/(R*T);//[kg/m^(3)] - density
m = r*V*A;// [kg/s] - mass flow rate of air
pi = m*E;//[Watt] - power input
printf(" (b).The wind power input to the turbine is %f Watt",pi);

