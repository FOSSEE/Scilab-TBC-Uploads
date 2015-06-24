// Exa 1.15
clc;
clear;
close;
format('v',6)
// Given data
miu_e = 0.17;// in m^2/V-s
miu_h = 0.025;// in m^2/V-s
e = 1.602*10^-19;// in C
T = 27;// in degree C
T = T + 273;// in K
kdas = 1.38*10^-23;// in J/K
De = miu_e*( (kdas*T)/e );// in m^-2/s
De = De * 10^4;// in cm^2/s
disp(De,"The diffusion coefficients of electrons in cm^2/s");
Dh = miu_h*( (kdas*T)/e );// in m^2/s
Dh = Dh * 10^4;// in cm^2/s
disp(Dh,"The diffusion coefficients of holes in cm^2/s");
