clc();
clear;
//Given :
sigma = 4*10^-4; // conductivity at room temperature in ohm^-1 m^-1
M = 28.1; // atomic weight in kg/kmole
d = 2330; // density in kg/m^3
dop = 10^8 ;// doping per 10^8 silicon atoms
e = 1.6*10^-19; // charge of an electron in C
mue = 0.135; // mobility of free electrons for silicon in m^2/Vs
Na = 6.023*10^26 ; // Avagadro's constant in atoms/kmole
N = (d*Na)/M; //atoms/m^3
Nd = N/dop; // per m^3
n = Nd; // electron concentration / m^3
sigma1 = n*e*mue; // conductivity in ohm^-1 m^-1
t = sigma1/sigma; // number of times the conductivity  increased
printf("Conductivity increased %d times .",t);
//Result obtained differs from that in textbook, because approximate value for sigma1 was considered.
