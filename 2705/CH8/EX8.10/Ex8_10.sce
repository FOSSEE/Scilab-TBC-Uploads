clear;
clc;
disp('Example 8.10');

// aim : To determine
// volumetric composition of the products of combustion

// given values
C = .86;//  mass composition of carbon
H = .14;// mass composition of hydrogen
Ea = .20;//  excess air for combustion
O2 = .23;// mass composition of O2 in air 

MCO2 = 44;// moleculer mass of CO2
MH2O = 18;// moleculer mass of H2O
MO2 = 32;// moleculer mass of O2
MN2 = 28;// moleculer mass of N2,


// solution
sO2 = (8/3*C+8*H);// stoichiometric O2 required, [kg/kg petrol]
sair = sO2/O2;// stoichiometric air required, [kg/kg petrol]
// for one kg petrol
mCO2 = 11/3*C;// mass of CO2,[kg]
mH2O = 9*H;// mass of H2O, [kg]
mO2 = Ea*sO2;// mass of O2, [kg]
mN2 = 14.84*(1+Ea)*(1-O2);// mass of N2, [kg]

mt = mCO2+mH2O+mO2+mN2;// total mass, [kg]
// percentage mass composition
x1 = mCO2/mt*100;// mass composition of CO2
x2 = mH2O/mt*100;// mass composition of H2O
x3 = mO2/mt*100;// mass composition of O2
x4 = mN2/mt*100;// mass composition of N2

vt = x1/MCO2+x2/MH2O+x3/MO2+x4/MN2;// total volume of petrol
v1 = x1/MCO2/vt*100;// %age composition of CO2 by volume
v2 = x2/MH2O/vt*100;// %age composition  of H2O by volume
v3 = x3/MO2/vt*100;// %age composition of O2 by volume
v4 = x4/MN2/vt*100;// %age composition of N2 by volume
 
mprintf('\nThe percentage composition of CO2 by volume is  =  %f\n,\nThe percentage composition of H2O by volume is  =  %f\n,\nThe percentage composition of O2 by volume is  =  %f\n,\nThe percentage composition of N2 by volume is  =  %f\n',v1,v2,v3,v4);

//  End
