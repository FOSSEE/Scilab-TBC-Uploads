// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-13,Example 1,Page 478
//Title:Depression in freezing point
//================================================================================================================
clear 
clc

//INPUT
weight=10; //weight of NaCl in grams
volume=1; //volume of water in litres
weight_water=1000; //  weight of water in grams (Weight=Volume*Density, density of water =1g/cc=1g/ml=1000g/l)
molwt_NaCl=58.5; //molecular weight of NaCl in grams
molwt_water=18; //molecular weight of water in grams
hf=6.002; //enthalpy change of fusion in kJ/mol at 0 degree celsius
P=101.325; //pressure in kPa
T=273.15; // freezing point temperature of water at the given pressure in K
R=8.314; //universal gas constant in J/molK;

//CALCULATION
x2=(weight/molwt_NaCl)/((weight/molwt_NaCl)+(weight_water/molwt_water));//  calculation of mole fraction of solute NaCl (no unit)
delt=(R*T^2*x2)/(hf*10^3);//calculation of depression in freezing point of water using Eq.(13.14)

//OUTPUT
mprintf('\n The depression in freezing point of water when 10g of NaCl solute is added = %0.2f K',delt);

//===============================================END OF PROGRAM===================================================
