//Chapter 5 : Fibre Optics

clear;

//Variable declaration
n1=1.6                 //core refractive index
n2=1.58                //clad refractive index

//Calculations
NA=(n1**2-n2**2)**0.5
im=asin(NA)
im=im*180/%pi

//Result
mprintf("Numerical aperture= %f",NA)
mprintf("\nAcceptance angle= %2.2f degrees",im)
//The answer provided in the textbook is incorrect

