// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 21,Page 346
//Title: Fugacity coefficients of the components in a mixture using the Virial Equation of state
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
B_11=-131*10^-6;//pure component (n-butane) second virial coefficient in m^3/mol taken from Example(9.7)
B_22=-577*10^-6;//pure component (n-octane) second virial coefficient in m^3/mol taken from Example(9.7)
B_12=-264*10^-6;//mixture interaction virial coefficient in m^3/mol taken from Example(9.7)
Bm=-309*10^-6;//second virial coefficient in m^3/mol taken from Example(9.7)
R=8.314;//universal gas constant in J/molK

//CALCULATION
//For convenience, n-butane is taken as 1 and n-octane as 2
y1=0.5;//mole fraction of n-butane in the equimolar mixture
y2=0.5;//mole fraction of n-octane in the equimolar mixture
Zm=(1/2)*(1+sqrt(1+((4*Bm*P*10^5)/(R*T))));//calculation of compressibility for the mixture(Zm) using Eq.(9.136) (no unit)
phi1=exp((((2*P*10^5)/(Zm*R*T))*((y1*B_11)+(y2*B_12)))-log(Zm));//calculation of the fugacity coefficient of n-butane in the mixture using Eq.(9.135) (no unit)
phi2=exp((((2*P*10^5)/(Zm*R*T))*((y1*B_12)+(y2*B_22)))-log(Zm));//calculation of the fugacity coefficient of n-octane in the mixture using Eq.(9.135) (no unit)

//OUTPUT
mprintf("\n The fugacity coefficient of n-butane in the equimolar mixture using the Virial Equation of state = %0.3f \n",phi1);
mprintf("\n The fugacity coefficient of n-octane in the equimolar mixture using the Virial Equation of state = %f \n",phi2);

//===============================================END OF PROGRAM===================================================
