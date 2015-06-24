clear;
clc;
disp('Example 8.9');

// aim : To determine
// the mass of air supplied per kilogram of fuel burnt

// given values
CO2 = 8.85;// volume composition of CO2
CO = 1.2;//  volume composition of CO
O2 = 6.8;//  volume composition of O2
N2 = 83.15;//  volume composition of N2 

// composition of gases in the fuel oil
C = .84;// mass composition of carbon 
H = .14;// mass composition of hydrogen
o2 = .02;// mass composition of oxygen

mC = 12;// moleculer mass of Carbon
mCO2 = 44;// molculer mass of CO2
mCO = 28;// molculer mass of CO
mN2 = 28;// molculer mass of N2
mO2 = 32;// molculer mass of O2
aO2 = .23;// mass composition of O2 in air

// solution
ma = (8/3*C+8*H-o2)/aO2;// theoretical mass of air/kg fuel, [kg]

mgas = CO2*mCO2+CO*mCO+N2*mN2+O2*mO2;//  total mass of gas/kg fuel, [kg]
x1 = CO2*mCO2/mgas;//  composition of CO2 by mass 
x2 = CO*mCO/mgas;// composition of CO by mass
x3 = O2*mO2/mgas;//  composition of O2 by mass 
x4 = N2*mN2/mgas;//  composition of N2 by mass 

m1 = x1*mC/mCO2+x2*mC/mCO;// mass of C/kg of dry flue gas, [kg]
m2 = C;// mass of C/kg fuel, [kg]
mf = m2/m1;// mass of dry flue gas/kg fuel, [kg]
mo2 = mf*x3;// mass of excess O2/kg fuel, [kg]
mair = mo2/aO2;// mass of excess air/kg fuel, [kg]
m = ma+mair;// mass of excess air supplied/kg fuel, [kg]

mprintf('\n The mass of air supplied per/kg of fuel burnt is  =  %f  kg\n',m);
 
// End
