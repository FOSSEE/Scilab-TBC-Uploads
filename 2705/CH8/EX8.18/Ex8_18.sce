clear;
clc;
disp('Example 8.18');

// aim : To determine
// the actual mass of air supplied/kg coal
// the velocity of flue gas

// given values
mc = 635;// mass of coal burn/h, [kg]
ea = .25;// excess air required
C = .84;// mass composition of carbon
H2 = .04;// mass composition of hydrogen
O2 = .05;// mass composition of oxygen
ash = 1-(C+H2+O2);// mass composition of ash

P1 = 101.3;// pressure, [kJn/m^2]
T1 = 273;// temperature, [K]
V1 = 22.4;// volume, [m^3]

T2 = 273+344;// gas temperature, [K]
P2 = 100;// gas pressure, [kN/m^2]
A = 1.1;// cross section area, [m^2]
aO2 = .23;// composition of O2 in air

mCO2 = 44;// moleculer mass of carbon
mH2O = 18;// molecular mass of hydrogen
mO2 = 32;// moleculer mas of oxygen
mN2 = 28;// moleculer mass of nitrogen

// solution
mtO2 = 8/3*C+8*H2-O2;// theoretical O2 required/kg coal, [kg]
msa= mtO2/aO2;// stoichiometric mass of  air supplied/kg coal, [kg]
mas = msa*(1+ea);// actual mass of air supplied/kg coal, [kg]

m1 = 11/3*C;// mass of CO2/kg coal produced, [kg]
m2 = 9*H2;// mass of H2/kg coal produced, [kg]
m3 = mtO2*ea;// mass of O2/kg coal produced, [kg]
m4 = mas*(1-aO2);// mass of N2/kg coal produced, [kg]

mt = m1+m2+m3+m4;// total mass, [kg]
x1 = m1/mt*100;// %age mass composition of CO2 produced
x2 = m2/mt*100;// %age mass composition of H2O produced
x3 = m3/mt*100;// %age mass composition of O2 produced
x4 = m4/mt*100;// %age mass composition of N2 produced

vt = x1/mCO2+x2/mH2O+x3/mO2+x4/mN2;// total volume
v1 = x1/mCO2/vt*100;// %age volume composition of CO2
v2 = x2/mH2O/vt*100;// %age volume composition of H2O
v3 = x3/mO2/vt*100;// %age volume composition of O2
v4 = x4/mN2/vt*100;// %age volume composition of N2

Mav = (v1*mCO2+v2*mH2O+v3*mO2+v4*mN2)/(v1+v2+v3+v4);// average moleculer mass, [kg/kmol]
// since no of moles is constant so PV/T=constant
V2 = P1*V1*T2/(P2*T1);//volume, [m^3]

mp = mt*mc/3600;// mass of product of combustion/s, [kg]

V = V2*mp/Mav;// volume of flowing gas /s,[m^3]

v = V/A;// velocity of flue gas, [m/s]
mprintf('\n The actual mass of air supplied is  =  %f  kg/kg coal\n',mas);
mprintf('\n The velocity of flue gas is  =  %f m/s\n',v);

//  End
