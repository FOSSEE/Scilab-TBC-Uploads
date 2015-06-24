// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 17,Page 340
//Title: Fugacity and fugacity coefficient using van der Waals equation of state
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
a_m=2.4405;//van der Waals constant (a_m) in Pa(m^3/mol)^2 taken from Example(9.8)
b_m=0.1767*10^-3;//van der Waals constant (b_m) in m^3/mol taken from Example(9.8)
Z=0.928;//compressibility factor taken from Example(9.12)
vm=2.8933*10^-3;//molar volume of the equimolar mixture in m^3/mol taken from Example(9.12)
R=8.314;//universal gas constant in J/molK

//CALCULATION
phi=exp (Z-1-log ((P*10^5*(vm-b_m))/(R*T))-(a_m/(R*T*vm)));//calculation of the fugacity coefficient (f/P) using the expression derived in Example 9.3 (no unit)
f=phi*P;//calculation of fugacity using Eq.(9.37) in bar


//OUTPUT
mprintf("\n The fugacity coefficient of an equimolar mixture of n-butane and n-octane using the van der Waals equation of state = %0.4f \n",phi);
mprintf("\n The fugacity of an equimolar mixture of n-butane and n-octane using the van der Waals equation of state = %0.2f bar\n",f);

//===============================================END OF PROGRAM===================================================
