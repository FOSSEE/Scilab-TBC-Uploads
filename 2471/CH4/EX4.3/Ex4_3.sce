clear ;
clc;
// Example 4.3
printf('Example 4.3\n\n');
printf('Page No. 90\n\n');

// given
K1 = 26;// Thermal Conductivity  of stainless steel in W/m-K
K2 = 0.038;// Thermal Conductivity  of insulaton in W/m-K
L1 = 3*10^-3;// thickness of stainless steel in metre
L2 = 40*10^-3;// thickness of insulation in metre
T1 = 105;// in degree celcius
T2 = 25;// in degree celcius
L = 15;// Length of pipe in metre
d1 = 50*10^-3;// Internal diameter of pipe in metre
d2 = 56*10^-3;// External diameter of pipe in metre

r1 = d1/2;// in metre
r2 = d2/2;// in metre

rm_p = ((r2-r1)/log(r2/r1));// logarithmic mean radius of pipe in m
rm_i = (((r2+L2)-r2)/log((r2+L2)/r2));// logarithmic mean radius of insulation in m

//By Fourier law of conduction
Q = (((T1-T2)/((L1/(K1*2*%pi*rm_p))+(L2/(K2*2*%pi*rm_i)))));// in W/m
Q_L = Q*L;
printf('The rate of conductive heat transfer per 15 m length of pie is %3.2f W\n',Q_L)// Deviation in answer due to direct substitution
