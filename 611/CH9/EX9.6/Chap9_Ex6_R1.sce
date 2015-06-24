// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 6,Page 327
//Title: Fugacity and fugacity coefficient using the virial coefficient correlation
//================================================================================================================
clear 
clc

//INPUT
T=339.7;//temperature of ethylene in K
P=1;//pressure of ethylene in bar
Tc=283.1;//critical temperature of ethylene in K
Pc=51.17;//critical pressure of ethylene in bar
w=0.089;//acentric factor (no unit)

//CALCULATION
Tr=T/Tc;//calculation of reduced temperature (no unit)
Pr=P/Pc;//calculation of reduced pressure (no unit)
B0=0.083-(0.422/(Tr^1.6));//calculation of B0 using Eq.(3.95) so as to compute fugacity coefficient using Eq.(9.58)
B1=0.139-(0.172/(Tr^4.2));//calculation of B1 using Eq.(3.96) so as to compute fugacity coefficient using Eq.(9.58)
phi=exp ((B0+(w*B1))*(Pr/Tr));//calculation of the fugacity coefficient using Eq.(9.58) (no unit)
f=P*phi;//calculation of the fugacity using Eq.(9.37) in bar

//OUTPUT
mprintf("\n The fugacity coefficient of ethylene = %0.4f \n",phi);
mprintf("\n The fugacity of ethylene = %0.4f bar\n",f);

//===============================================END OF PROGRAM===================================================
