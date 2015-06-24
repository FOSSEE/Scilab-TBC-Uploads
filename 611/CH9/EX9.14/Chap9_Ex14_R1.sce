// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 14,Page 337
//Title: Enthalpy and entropy departure
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
am=2.4405;//van der Waals constant for the mixture taken from Example 9.8 in Pa(m^3/mol)^2
bm=0.1767*10^-3;//van der Waals constant for the mixture taken from Example 9.8 in m^3/mol
vm=2.8933*10^-3;//molar volume of the mixture taken from Example 9.12 in m^3/mol
R=8.314;//universal gas constant in J/molK

//CALCULATION
dep_h=((P*10^5*vm)-(R*T)-(am/vm))*10^-3;//calculation of the enthalpy departure using Example(8.1) in kJ/mol
dep_s=R*(log ((P*10^5*(vm-bm))/(R*T)));//calculation of the entropy departure using Example(8.1) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure of an equimolar mixture of n-butane and n-octane = %0.3f kJ/mol\n",dep_h);
mprintf("\n The entropy departure of an equimolar mixture of n-butane and n-octane = %0.3f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================
