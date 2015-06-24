//Chapter-9, Example 9.4, Page 386
//=============================================================================
clc
clear

//INPUT DATA
l=0.5;//Wavelength at maximum intensity of radiation in micro meter

//CALCULATIONS
T=(0.289*10^-2)/(l*10^-6);//Temperature according to Wien's displacement law in degree C
E=(5.67*10^-8*T^4)/10^6;//Emissive power using Stefan-Boltzmann law in MW/m^2

//OUTPUT
mprintf('Surface temperature is %3.0f K \nEmissive power is %3.1f MW/m^2',T,E)

//=================================END OF PROGRAM==============================
