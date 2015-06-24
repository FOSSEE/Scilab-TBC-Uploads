// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 5,Page 322
//Title: Fugacity and fugacity coefficient from the Lee-Kesler data
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-octane vapour in MPa
Tc=569.4;//critical temperature of n-octane in K
Pc=24.97;//critical pressure of n-octane in bar
w=0.398;//acentric factor (no unit)

//CALCULATION
Tr=T/Tc;//calculation of reduced temperature (no unit)
Pr=(P*10^6)/(Pc*10^5);//calculation of reduced pressure (no unit)
log_phi0=-0.032;//value of log_phi0 taken from Figure(9.2) (no unit)
log_phi1=-0.025;//value of log_phi1 taken from Figure(9.4) (no unit)
phi=10^(log_phi0+(w*log_phi1));//calculation of the fugacity coefficient using Eq.(9.54) (no unit)
f=P*phi;//calculation of the fugacity using Eq.(9.37) in MPa

//OUTPUT
mprintf("\n The fugacity coefficient of n-octane vapour = %f \n",phi);
mprintf("\n The fugacity of n-octane vapour = %f MPa\n",f);

//===============================================END OF PROGRAM===================================================

// DISCLAIMER: THE VALUE OF FUGACITY COEFFICIENT AS CALCULATED IN THE TEXTBOOK UPON TAKING THE ANTILOG IS WRONG. THE ANTILOG OF  -0.042 IS A VALUE LESS THAN 1. THIS HAS BEEN CORRECTED ACCORDINGLY IN THIS PROGRAM AND THE VALUE OF FUGACITY COEFFICIENT AND FUGACITY HAVE BEEN COMPUTED.
