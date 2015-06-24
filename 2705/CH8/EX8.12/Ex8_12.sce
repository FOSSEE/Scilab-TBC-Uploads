clear;
clc;
disp('Example 8.12');

// aim : To determine
// (a) the stoichiometric volume of air for the complete combustion of 1 m^3
// (b) the percentage volumetric analysis of the products of combustion

// given values
N2 = .018;// volumetric composition of N2
CH4 = .94;// volumetric composition of CH4
C2H6 = .035;// volumetric composition of C2H6
C3H8 = .007;// volumetric composition of C3H8
aO2 = .21;// O2 composition in air

// solution
// (a)
// for CH4
// CH4 +2 O2= CO2 + 2 H2O
sva1 = 2/aO2;// stoichiometric volume of air, [m^3/m^3 CH4]
svn1 = sva1*(1-aO2);// stoichiometric volume of nitrogen in the air, [m^3/m^3 CH4]

// for C2H6
// 2 C2H6 +7 O2= 4 CO2 + 6 H2O
sva2 = 7/2/aO2;// stoichiometric volume of air, [m^3/m^3 C2H6]
svn2 = sva2*(1-aO2);// stoichiometric volume of nitrogen in the air, [m^3/m^3 C2H6]

// for C3H8
// C3H8 +5 O2=3 CO2 + 4 H2O
sva3 = 5/aO2;// stoichiometric volume of air, [m^3/m^3 C3H8]
svn3 = sva3*(1-aO2);// stoichiometric volume of nitrogen in the air, [m^3/m^3 C3H8]

Sva = CH4*sva1+C2H6*sva2+C3H8*sva3;// stoichiometric volume of air required, [m^3/m^3 gas]
mprintf('\n (a) The stoichiometric volume of air for the complete combustion  =  %f m^3m^3 gas\n',Sva);

// (b)
// for one m^3 of natural gas
vCO2 = CH4*1+C2H6*2+C3H8*3;// volume of CO2 produced, [m^3]
vH2O = CH4*2+C2H6*3+C3H8*4;// volume of H2O produced, [m^3]
vN2 = CH4*svn1+C2H6*svn2+C3H8*svn3+N2;// volume of N2 produced, [m^3]

vg = vCO2+vH2O+vN2;// total volume of gas, [m^3]
x1 = vCO2/vg*100;// volume percentage of CO2 produced
x2 = vH2O/vg*100;// volume percentage of H2O produced
x3 = vN2/vg*100;// volume percentage of N2 produced

mprintf('\n (b) The percentage volumetric composition of CO2 in produced is  =  %f\n,\n     The percentage volumetric composition of H2O in produced is  =  %f\n,\n     The percentage volumetric composition of N2 in produced is  =  %f\n',x1,x2,x3);

// End
