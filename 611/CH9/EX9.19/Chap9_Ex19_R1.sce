// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 19,Page 341
//Title: Fugacity and fugacity coefficient using the virial coefficient correlation
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Bm=-309*10^-6;//second virial coefficient in m^3/mol taken from Example (9.7)
R=8.314;//universal gas constant in J/molK

//CALCULATION
//Using Eq.(3.91) and Eq.(9.58) ln(phi)=BP/RT, which is used to compute phi
phi=(exp((Bm*P*10^5)/(R*T)));//calculation of the fugacity coefficient using the above expression (no unit)
f=phi*P;//calculation of the fugacity using Eq.(9.37) in bar

//OUTPUT
mprintf("\n The fugacity coefficient of an equimolar mixture of n-butane and n-octane using the virial coefficient correlation = %f \n",phi);
mprintf("\n The fugacity of an equimolar mixture of n-butane and n-octane using the virial coefficient correlation = %f bar\n",f);

//===============================================END OF PROGRAM===================================================

//DISCLAIMER: THE VALUE OF FUGACITY COEFFICIENT AS CALCULATED IN THE TEXTBOOK IS WRONG.THIS HAS BEEN CORRECTED IN THIS PROGRAM.
