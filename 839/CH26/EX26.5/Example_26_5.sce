//clear//
clear;
clc;

//Example 26.5
//Given (from Example 26.4)
F = 10; //[gal/day-ft^2], based on external area
Do = 300*10^-6; //[m]
Di = 200*10^-6; //[m]
vi = 0.5; //[cm/s]
rho = 1; //[g/cm^3]
mu = 10^-3; //[Pa-s], assumed
f = 0.97;
L = 3; //[m]

//Solution
//(a)
//Jw based on area
Jw = 4.72*10^-4*Do/Di*10^-2; //[m/s]
dt = 200*10^-6; //[m]
D = dt; //[m]
//From Eq.(26.53)
Vbar = 4*(Jw)*L/Di; //[m/s]
//From Eq.(26.56)
delta_ps = (Vbar*32*mu*L)/(D)^2*(1/2)/10^5; //[atm]
disp('atm',delta_ps,'pressure drop = ','m/s',Vbar,'exit velocity = ');

//(b)
//If the fibres are open at both ends, the effective length is 1.5m and
//the exit velocity is half as great. The pressure drop is one-fourth as 
//large as it was:
deltaP = delta_ps/4; //[atm]
disp('atm',deltaP,'pressure drop (if both ends are open) = ') 
