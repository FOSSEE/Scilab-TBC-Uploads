//Chapter 5 : Fibre Optics

clear;

//Variable declaration
NA=0.2                 //Numerical aperture
n0=1.33                //refractive index
n2=1.59                //clad refractive index

//Calculations
n1=sqrt(NA**2+n2**2)
NA1=sqrt(n1**2-n2**2)/n0
thetac=asin(NA1)
thetac=thetac*180/%pi

//Result
mprintf("Acceptance angle= %f degrees",thetac)
