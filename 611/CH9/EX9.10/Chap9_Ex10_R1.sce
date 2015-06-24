// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 10,Page 334
//Title: Molar volume of an equimolar mixture using pseudocritical properties
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Tc=[425.2;569.4];//critical temperature of n-butane and n-octane in K
Pc=[37.97;24.97];//critical pressure of n-butane and n-octane in bar
R=8.314;//universal gas constant in J/molK

//CALCULATION
//For convenience, n-butane is taken as 1 and n-octane as 2
y1=0.5;//mole fraction of n-butane in the equimolar mixture
y2=0.5;//mole fraction of n-octane in the equimolar mixture
Tcm=(y1*Tc(1,:))+(y2*Tc(2,:));//calculation of pseudocritical temperature of mixture using Eq.(9.100) in K
Pcm=(y1*Pc(1,:))+(y2*Pc(2,:));//calculation of pseudocritical pressure of mixture using Eq.(9.101) in bar
Trm=T/Tcm;//calculation of pseudoreduced temperature of the mixture using Eq.(9.102) (no unit)
Prm=P/Pcm;//calculation of pseudoreduced pressure of the mixture using Eq.(9.103) (no unit)
Zm0=0.9;//value of Zm0 is taken from the generalized compressibility chart, Figure(3.11) corresponding to Trm and Prm (no unit)
vm=(Zm0*R*T)/(P*10^5);//calculation of the molar volume of the equimolar mixture in m^3/mol

//OUTPUT
mprintf("\n The molar volume of an equimolar mixture of n-butane and n-octane using the pseudocritical properties estimated through Kays rule = %0.2e m^3/mol\n",vm);

//===============================================END OF PROGRAM===================================================

 
