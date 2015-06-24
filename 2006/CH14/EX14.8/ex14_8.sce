clc;
Ha_H1=6220; // From example 14.7 in kJ/kmol
del_Ho=-2039.7; // From example 14.7 LHV in MJ/kmol
Hb_H2=-del_Ho+Ha_H1; // For adiabatic combustion of C3H8
// Hb_H2=3*h1333_CO2+4*h1333_H2O+18.8*h1333_N2 By iteration process and making use of the values from Table A.3, A.13, A.15 we can get the adiabatic flame temperature is
Tad=2300;// The adiabatic flame temperature in kelvin
disp ("K",Tad,"The adiabatic flame temperature");
