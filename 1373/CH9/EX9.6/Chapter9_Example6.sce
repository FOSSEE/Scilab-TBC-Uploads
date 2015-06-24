//Chapter-9, Example 9.6, Page 389
//=============================================================================
clc
clear

//INPUT DATA
T=(1400+273);//Temperature of the body in K
l=0.65;//Wavelength in micro meter
e=0.6;//Emissivity

//CALCULATIONS
T=(1/((1/T)-((l*10^-6*log(1/e))/(1.439*10^-2))));//Temperature of the body in K
Tb=(T-273);//Temperature of the body in degree C

//OUTPUT
mprintf('Temperature of the body is %3.0f degree C',Tb)

//=================================END OF PROGRAM==============================
