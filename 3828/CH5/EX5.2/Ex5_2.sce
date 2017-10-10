//Chapter 5 : Fibre Optics

clear;

//Variable declaration
n1=1.6                //core refractive index
NA=0.2                //Numerical aperture

//Calculations
NA=(n1**2-NA**2)**0.5

//Result
mprintf("Refractive index of cladding= %f",NA)
