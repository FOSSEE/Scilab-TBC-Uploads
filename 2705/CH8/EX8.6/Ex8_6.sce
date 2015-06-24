clear;
clc;
disp('Example 8.6');

// aim : To determine
// the stoichiometric volume of air for the complete combustion
// the products of combustion

// given values
CH4 = .142;// volumetric composition of CH4
CO2 = .059;// volumetric composition of CO2
CO = .360;// volumetric composition of CO
H2 = .405;// volumetric composition of H2
O2 = .005;// volumetric composition of O2
N2 = .029;// volumetric composition of N2

aO2 = .21;// O2 composition into air by volume

//  solution
svO2 = CH4*2+CO*.5+H2*.5-O2;// stroichiometric volume of O2 required, [m^3/m^3 fuel]
svair = svO2/aO2;// stroichiometric volume of air required, [m^3/m^3 fuel]
mprintf('\n Stoichiometric volume of air required is  =  %f  m^3/m^3 fuel\n',svair);

// for one m^3 fuel
vN2 = CH4*7.52+CO*1.88+H2*1.88-O2*.79/.21+N2;// volume of N2 produced, [m^3]
vCO2 = CH4*1+CO2+CO*1;// volume of CO2 produced, [m^3]
vH2O = CH4*2+H2*1;// volume of H2O produced, [m^3]

vt = vN2+vCO2+vH2O;// total volume of product, [m^3]

x1 = vN2/vt*100;// %age composition of N2 in product,
x2 = vCO2/vt*100;// %age composition of CO2 in product
x3 = vH2O/vt*100;// %age composition of H2O in product

mprintf('\n N2 in products  =  %fm^3/m^3  fuel,  percentage composition  =  %f,\n CO2 in products =  %f  m^3/m^3 fuel,  percentage composition  =  %f,\n H2O in products  =  %fm^3/m^3  fuel,  percentage composition  =  %f',vN2,x1,vCO2,x2,vH2O,x3);

// End 
