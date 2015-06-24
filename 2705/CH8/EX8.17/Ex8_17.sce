clear;
clc;
disp('Example 8.17');

// aim : To determine
// (a) the partial pressure of each gas in the vessel
// (b) the volume of the vessel
// (c)  the total pressure in the gas when temperature is raised to228 C

// given values
MO2 = 8;//  mass of O2, [kg]
MN2 = 7;//  mass of N2, [kg]
MCO2 = 22;//  mass of CO2, [kg]

P = 416;// total pressure in the vessel, [kN/m^2]
T = 273+60;// vessel temperature, [K]
R = 8.3143;// gas constant, [kJ/kmol K]

mO2 = 32;// molculer mass of O2 
mN2 = 28;// molculer mass of N2
mCO2 = 44;// molculer mass of CO2

// solution
// (a)
n1 = MO2/mO2;// moles of O2, [kmol]
n2 = MN2/mN2;// moles of N2, [kmol]
n3 = MCO2/mCO2;// moles of CO2, [kmol]

n = n1+n2+n3;// total moles in the vessel, [kmol]
// since,Partial pressure is proportinal, so
P1 = n1*P/n;// partial pressure of O2, [kN/m^2]
P2 = n2*P/n;// partial pressure of N2, [kN/m^2]
P3 = n3*P/n;// partial pressure of CO2, [kN/m^2]

mprintf('\n (a)The partial pressure of O2 is  =  %f  kN/m^2,\n,   The partial pressure of N2 is  =  %f  kN/m^2,\n    The partial pressure of CO2 is  =  %f  kN/m^2,\n',P1,P2,P3);

// (b)
// assuming ideal gas 
V = n*R*T/P;// volume of the container, [m^3]
mprintf('\n (b) The volume of the container is  =  %f  m^3\n',V);

// (c)
T2 = 273+228;// raised vessel temperature, [K]
// so volume of vessel  will constant , P/T=constant
P2 = P*T2/T;// new pressure in the vessel , [kn/m62]
mprintf('\n (c) The new total pressure in the vessel is  =  %f  kN/m^2\n',P2);

//  End
