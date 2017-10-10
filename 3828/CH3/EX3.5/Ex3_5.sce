//Chapter 3 : Polarization

clear;

//Variable declaration
lamda=6000*10**-8       //wavelength
no=1.54                //refractive index of O-ray
ne=1.55                //refractive index of E-ray

//Calculations
t=lamda/(6*(ne-no))

//Result
mprintf("Thickness of a quarterwave plate= %f",t)

