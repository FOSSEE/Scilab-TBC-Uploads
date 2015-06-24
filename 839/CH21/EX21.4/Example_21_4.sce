//clear//
clear;
clc;

//Example 21.4
//Given
Nre = 20000;
T = 40; //[C]
D = 2; //[in.]
Dv1 = 0.288; //[cm^2/s], for water-air 
Dv2 = 0.145; //[cm^2/s], for ethanol-air
//Solution
//For air at 40 C
rho = 29/22410*273.16/313.16; //[g/cm^3]
mu = 0.0186; //[cP], from Appendix 8
mubyrho = mu*10^-2/rho; //[cm^2/s]

//(a)
// For the air-water system,
Nsc = mubyrho/Dv1;
//Form Eq.(21.54)
Nsh = 0.023*(Nre/2)^0.81*Nsc^0.44;
//In the film theory kc = D/BT and since Nsh = kc*D/Dv
BT1 = D/Nsh; //[in.]
disp('in.',BT1,'Effective thickness of the gas film is')

//(b)
//For the system air-ethanol, 
Nsc = mubyrho/Dv2;
Nsh = 0.023*(Nre/2)^0.81*Nsc^0.44;
BT2 = D/Nsh; //[in.]
disp('in.',BT2,'Effective thickness of the gas film is')
