// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-6,Example 12,Page 226
//Title: Minimum power for compression
//================================================================================================================
clear 
clc

//INPUT
P1=0.1;//pressure at which air enters the compressor in MPa
T1=300;//temperature at which air enters the compressor in K
P2=1;//pressure at which air leaves the compressor in MPa
T2=300;//temperature at which air leaves the compressor in K
T0=300;//ambient temperature in K
N=1;//molar flow rate of air in mol/s
gaamma=1.4;//ratio of specific heat capacities (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION

//T0=T1=T2 and h2-h1=Cp*(T2-T1)=0 as T2=T1

Ws=(-N*T0*(-R*log (P2/P1)))*10^-3;//calculation of minimum power required for compression using Eq.(6.99) in kW

//OUTPUT
mprintf("\n The minimum power required to compress one mole per second of air=%0.3f kW\n",Ws);

//===============================================END OF PROGRAM===================================================
