// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-13,Example 3,Page 481
//Title:Osmotic pressure
//================================================================================================================
clear 
clc

//INPUT
weight=10; //weight of NaCl in grams
weight_water=1000; //  weight of water in grams
molwt_NaCl=58.5; //molecular weight of NaCl in grams
molwt_water=18; //molecular weight of water in grams
T=300; //prevailing temperature of water in K
R=8.314; //universal gas constant in (Pa m^3)/(mol K);
v=18*10^-6;//molar volume in m^3/mol
//CALCULATION
x2=0.0031;//mole fraction of solute NaCl (From Example 13.1)(no unit)
pi=((R*T*x2)/v)*10^-3; // calulation of osmotic pressure using Eq(13.30)(in kPa)

//OUTPUT
mprintf('\n The osmotic pressure of a solution conatining 10g of NaCl in 1000g of water at 300K = %0.2f kPa',pi);

//===============================================END OF PROGRAM===================================================
