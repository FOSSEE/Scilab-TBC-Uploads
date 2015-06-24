clear;
clc;
disp('Example 8.16');

// aim : To determine
// (a) volume of gas
// (b) (1) the average molecular mass of air
//       (2) the value of R
//       (3) the mass of 1 m^3 of air at STP

// given values
n = 1;// moles of gas, [kmol]
P = 101.32;// standard pressure, [kN/m^2]
T = 273;// gas tempearture, [K]

O2 = 21;// percentage volume composition of oxygen in air
N2 = 79;// percentage volume composition of nitrogen in air
R = 8.3143;// molar gas constant, [kJ/kg K]
mO2 = 32;// moleculer mass of O2
mN2 = 28;// moleculer mass of N2

// solution
// (a)
V = n*R*T/P;// volume of gas, [m^3]
mprintf('\n (a) The volume of the gas is  =  %f m^3\n',V);

// (b)
//(1)
Mav = (O2*mO2+N2*mN2)/(O2+N2);// average moleculer mass of air
mprintf('\n (b)(1) The average moleculer mass of air is  =  %f g/mol\n',Mav);

// (2)
Rav = R/Mav;// characteristic gas constant, [kJ/kg k]
mprintf('\n     (2) The value of R is  =  %f  kJ/kg K\n',Rav);

// (3)
rho = Mav/V;// density of air, [kg/m^3]
mprintf('\n     (3) The mass of one cubic metre of air at STP is  =  %f  kg/m^3\n',rho);

//  End
