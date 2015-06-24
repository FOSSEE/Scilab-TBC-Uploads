//Chapter-9, Example 9.2, Page 383
//=============================================================================
clc
clear

//INPUT DATA
T=(727+273);//Temperature of black body in K
l1=1;//Wavelength in micro meter
l2=5;//Wavelength in micro meter
F1=0.0003;//From Table 9.2 on page no. 385
F2=0.6337;//From Table 9.2 on page no. 385

//CALCULATIONS
a=(5.67*10^-8*T^4)/1000;//Heat transfer in kW/m^2
F=(F2-F1)*a;//Fraction of thermal radiation emitted by the surface in kW/m^2

//OUTPUT
mprintf('Fraction of thermal radiation emitted by the surface is %3.1f kW/m^2',F)

//=================================END OF PROGRAM==============================
