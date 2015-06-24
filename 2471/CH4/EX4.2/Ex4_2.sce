clear ;
clc;
// Example 4.2
printf('Example 4.2\n\n');
printf('Page No. 89\n\n');
// given
K1 = 45// Thermal Conductivity  of mild steel in W/m-K
K2 = 0.040// Thermal Conductivity  of insulaton in W/m-K
L1 = 5*10^-3;// thickness of mild steel in metre
L2 = 50*10^-3;// thickness of insulation in metre
T1 = 100;// in degree celcius
T2 = 25;// in degree celcius
A = 1;// Area in m^2

//By Fourier law of conduction
Q = (((T1-T2)/((L1/(K1*A))+(L2/(K2*A)))))// in Watts
printf('The rate of conductive heat transfer is %.0f W \n',Q)
