clear;
clc;
disp('Example 8.24');

// aim : To determine
//  the mass of air supplied/kg of fuel burnt

// given values
// gas composition in the fuel
C = 84;//  %age mass composition of Carbon in the fuel
H2 = 14;//  %age mass composition of H2 in the fuel
O2f = 2;// %age mass composition of O2 in the fuel

// exhaust gas composition
CO2 = 8.85;// %age composition of CO2 by volume
CO = 1.2// %age composition of CO by volume
O2 = 6.8;// %age composition of O2 by volume
N2 = 83.15;// %age composition of N2 by volume

mC = 12;// moleculer mass of CO2,[kg/kmol]
mH2 = 2;// moleculer mass of H2, [kg/kmol]
mO2 = 32;// moleculer mass of O2, [kg/kmol]
mN2 = 28;// moleculer mass of N2, [kg/kmol]

// solution
// combustion equation by no. of moles
// 84/12 C + 14/2 H2 +2/32 O2 + a O2+79.3/20.7*a N2 = b CO2 + d CO2+  eO2 + f N2 +g H2
// equating  coefficient and given condition
b = 6.16;// [mol]
a = 15.14;// [mol]
d = .836;// [mol]
f = 69.3*d;// [mol]
// so fuel side combustion equation is
// 84/12 C + 14/2 H2 +2/32 O2 +  15.14 O2 +85.5 N2
mair = ( a*mO2 +f*mN2)/100;// mass of air/kg fuel, [kg]
mprintf('\n The mass of air supplied per kg of fuel is  =  %f  kg\n',mair);

//  End
