//Chapter 5 : Fibre Optics

clear;

//Variable declaration
delr=12*10**-3         //fractional refractive index change
NA=0.22                //Numerical aperture

//Calculations
n1=NA/sqrt(2*delr)
n2=n1-(n1*delr)

//Result
mprintf("Refractive index of core material= %f",n1)
mprintf("\nRefractive index of cladding material= %f",n2)

