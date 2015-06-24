//Chapter-9, Example 9.5, Page 389
//=============================================================================
clc
clear

//INPUT DATA
Ts=(827+273);//Surface temperature in degree C
E=(1.37*10^10);//Emmisive power in W/m^3

//CALCULATIONS
Eblmax=(1.307*10^-5*Ts^5);//Maximum emissive power in W/m^3
e=(E/Eblmax);//Emissivity of the body 
lmax=((0.289*10^-2)/Ts)/10^-6;//Wavelength correspoing to the maximum spectral intensity of radiation in micro meter

//OUTPUT
mprintf('Wavelength corresponding to the maximum spectral intensity of radiation is %3.2f micro meter',lmax)

//=================================END OF PROGRAM==============================
