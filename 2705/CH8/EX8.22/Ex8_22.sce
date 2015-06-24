clear;
clc;
disp('Example 8.22');

// aim : To determine
// the percentage gravimetric analysis of the total products of combustion

// given values
CO = 12;//  %age volume composition of CO
H2 = 41;//  %age volume composition of H2
CH4 = 27;//  %age volume composition of CH4
O2 = 2;//  %age volume composition of O2
CO2 = 3;//  %age volume composition of CO2
N2 = 15;//  %age volume composition of N2

mCO2 = 44;// moleculer mass of CO2,[kg/kmol]
mH2O = 18;// moleculer mass of H2O, [kg/kmol]
mO2 = 32;// moleculer mass of O2, [kg/kmol]
mN2 = 28;// moleculer mass of N2, [kg/kmol]
 
ea = 15;// %age excess air required
aO2 = 21;// %age air composition in the air

// solution
// combustion equation by no. of moles
// 12CO + 41H2 + 27CH4 + 2O2 + 3CO2 + 15N2 + aO2+79/21*aN2 = bCO2 + dH2O + eO2 + 15N2 +79/21*aN2
// equating C coefficient
b = 12+27+3;// [mol]
// equatimg H2 coefficient
d = 41+2*27;// [mol]
// O2 required is 15 % extra,so
// e/(e-a)=.15 so e=.13a
// equating O2 coefficient
// 2+3+a=b+d/2 +e

a = (b+d/2-5)/(1-.13);
e = .13*a;// [mol]

// gravimetric analysis of product
v1 =  b*mCO2;// gravimetric volume of CO2 
v2 =  d*mH2O ;// gravimetric volume of H2O 
v3 = e*mO2;// gravimetric volume of O2
v4 = 15*mN2 +79/21*a*mN2;// gravimetric volume of N2 

vt = v1+v2+v3+v4;// total
x1 = v1/vt*100;// percentage gravimetric of CO2
x2 = v2/vt*100;// percentage gravimetric of H2O
x3 = v3/vt*100;// percentage gravimetric of O2
x4 = v4/vt*100;// percentage gravimetric of N2

mprintf('\n Percentage gravimetric composition of CO2  =  %f\n ,\n Percentage gravimetric composition of H2O  =  %f\n\n Percentage gravimetric composition of O2  =  %f\n\n Percentage gravimetric composition of N2  =  %f\n',x1,x2,x3,x4);

//  End 
