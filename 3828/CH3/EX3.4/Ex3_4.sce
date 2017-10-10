//Chapter 3 : Polarization

clear;

//Variable declaration
lamda=6000*10**-8       //wavelength
no=1.544                //refractive index of O-ray
ne=1.553                //refractive index of E-ray

//Calculations
t=lamda/(4*(ne-no))/10**-3

//Result
mprintf("Thickness of a quarterwave plate= %.2f*10**-5 m",t)

