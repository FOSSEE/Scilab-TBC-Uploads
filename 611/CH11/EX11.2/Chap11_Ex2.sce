// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 2,Page 384
//Title:Composition of liquid
//================================================================================================================
clear 
clc

//INPUT
//For convenience, benzene is taken as 1 and toluene as 2
T=95;//temperature of the equimolar vapour mixture of benzene and toluene in degree celsius
y1=0.5;//mole fraction of benzene in vapour phase (no unit)
y2=0.5;//mole fraction of toluene in vapour phase (no unit)
P1_s=1176.21;//saturation pressure of benzene at T, taken from Example 11.1 in Torr
P2_s=477.03;//saturation pressure of toluene at T, taken from Example 11.1 in Torr

//CALCULATION
P=1/((y1/P1_s)+(y2/P2_s));//calculation of the total pressure using Eq.(11.21) in Torr
x1=(y1*P)/P1_s;//calculation of mole fraction of benzene in liquid phase using Eq.(11.15)(no unit)
x2=1-x1;//calculation of mole fraction of toluene in liquid phase using Eq.(11.15)(no unit)

//OUTPUT
mprintf('The composition of the liquid which is in equilibrium with the equimolar vapour mixture of benzene and toluene at 95 degree celsius is \n mole fraction of benzene in liquid phase (x1)=%f \n mole fraction of toluene in liquid phase (x2)=%f \n',x1,x2);

//===============================================END OF PROGRAM===================================================
