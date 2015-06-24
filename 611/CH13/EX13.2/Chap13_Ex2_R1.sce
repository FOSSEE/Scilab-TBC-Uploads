// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-13,Example 2,Page 480
//Title:Elevation in Boiling Point
//================================================================================================================
clear 
clc

//INPUT
weight=10; //weight of NaCl in grams
volume=1; //volume of water in litres
weight_water=1000; //  weight of water in grams (Weight=Volume*Density, density of water =1g/cc=1g/ml=1000g/l)
molwt_NaCl=58.5; //molecular weight of NaCl in grams
molwt_water=18; //molecular weight of water in grams
lat_ht=2256.94; //latent heat of vaporization in kJ/kg at 100 degree celsius (obtained from steam tables)
P=101.325; //pressure in kPa
T=373.15; //boiling point temperature of water at the given pressure in K
R=8.314; //universal gas constant in J/molK

//CALCULATION
x2=0.0031;//mole fraction of solute NaCl (From Example 13.1)(no unit)
hv=(lat_ht*molwt_water)/1000; //conversion of latent heat from kJ/kg to kJ/mol
delt=(R*T^2*x2)/(hv*10^3); //calculation of elevation in boiling point of water using Eq.(13.24)

//OUTPUT
mprintf('\n The elevation in boiling point of water when 10g of NaCl solute is added = %0.2f K',delt);

//===============================================END OF PROGRAM===================================================
