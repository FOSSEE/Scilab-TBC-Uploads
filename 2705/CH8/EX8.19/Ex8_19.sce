clear;
clc;
disp('Example 8.19');

// aim : To determine
// (a) the temperature of the gas after compression
// (b) the density of the air-gas mixture

// given values
CO = 26;// %age volume composition of CO 
H2 = 16;// %age volume composition of H2
CH4 = 7;// %age volume composition of CH4 
N2 = 51;// %age volume composition of N2

P1 = 103;// gas pressure, [kN/m^2]
T1 = 273+21;// gas temperature, [K]
rv = 7;// volume ratio

aO2 = 21;// %age volume composition of O2 in the air
c = 21;// specific heat capacity of diatomic gas, [kJ/kg K]
cCH4 = 36;// specific heat capacity of CH4, [kJ/kg K]
R = 8.3143;// gas constant, [kJ/kg K]

mCO = 28;// moleculer mass of carbon
mH2 = 2;// molecular mass of hydrogen
mCH4 = 16;// moleculer mas of methane
mN2 = 28;// moleculer mass of nitrogen
mO2 = 32;// moleculer mass of oxygen

// solution
// (a)
Cav = (CO*c+H2*c+CH4*cCH4+N2*c+100*2*c)/(100+200);// heat capacity, [kJ/kg K]

Gama = (Cav+R)/Cav;// heat capacity ratio
// rv = V1/V2
// process is polytropic, so
T2 = T1*(rv)^(Gama-1);// final tempearture, [K]
mprintf('\n (a) The temperature of the gas after compression is  =  %f C\n',T2-273);

// (b)

Mav = (CO*mCO+H2*mH2+CH4*mCH4+N2*mN2+42*mO2+158*mN2)/(100+200)

// for 1 kmol of gas
V = R*T1/P1;// volume of one kmol of gas, [m^3]
// hence
rho = Mav/V;// density of gas, [kg/m^3]

mprintf('\n (b) The density of air-gas mixture is  =  %f  kg/m^3\n',rho);

//  End
