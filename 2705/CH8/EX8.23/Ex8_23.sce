clear;
clc;
disp('Example 8.23');

//  aim : To determine
// (a) the actual quantity of air supplied/kg of fuel
// (b) the volumetric efficiency of the engine

// given values
d = 300*10^-3;// bore,[m]
L = 460*10^-3;// stroke,[m]
N = 200;// engine speed, [rev/min]

C = 87;//  %age mass composition of Carbon in the fuel
H2 = 13;//  %age mass composition of H2 in the fuel

mc = 6.75;// fuel consumption, [kg/h]

CO2 = 7;// %age composition of CO2 by volume
O2 = 10.5;// %age composition of O2 by volume
N2 = 7;// %age composition of N2 by volume

mC = 12;// moleculer mass of CO2,[kg/kmol]
mH2 = 2;// moleculer mass of H2, [kg/kmol]
mO2 = 32;// moleculer mass of O2, [kg/kmol]
mN2 = 28;// moleculer mass of N2, [kg/kmol]

T = 273+17;// atmospheric temperature, [K]
P = 100;// atmospheric pressure, [kn/m^2]
R =.287;// gas constant, [kJ/kg k]

// solution
// (a)
// combustion equation by no. of moles
// 87/12 C + 13/2 H2 + a O2+79/21*a N2 = b CO2 + d H2O + eO2 + f N2
// equating  coefficient
b = 87/12;// [mol]
a = 22.7;// [mol]
e = 10.875;// [mol]
f = 11.8*b;// [mol]
// so fuel side combustion equation is
// 87/12 C + 13/2 H2 +22.7 O2 +85.5 N2
mair = ( 22.7*mO2 +85.5*mN2)/100;// mass of air/kg fuel, [kg]
mprintf('\n (a) The mass of actual air supplied per kg of fuel is  =  %f  kg\n',mair);

// (b)
m = mair*mc/60;// mass of air/min, [kg]
V = m*R*T/P;// volumetric flow of air/min, [m^3]
SV = %pi/4*d^2*L*N/2;// swept volume/min, [m^3]

VE = V/SV;// volumetric efficiency
mprintf('\n (b) The volumetric efficiency of the engine is  =  %fpercent\n',VE*100);

//  End
