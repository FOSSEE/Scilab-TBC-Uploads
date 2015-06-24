clear ;
clc;
// Example 4.1
printf('Example 4.1\n\n');
printf('Page No. 88\n\n');

// given
K = 45// Thermal Conductivity in W/m-K
L = 5*10^-3;// thickness in metre
T1 = 100;// in degree celcius
T2 = 99.9;// in degree celcius
A = 1;// Area in m^2

//By Fourier law of conduction
Q = ((K*A*(T1-T2))/L);// in Watts
printf('The rate of conductive heat transfer is %.0f W \n',Q)
