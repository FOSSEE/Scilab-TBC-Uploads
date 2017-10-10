//Chapter 5 : Fibre Optics

clear;

//Variable declaration
n1=1.5                  //core refractive index
n2=1.47                 //clad refractive index

//Calculations
thetac=asin(n2/n1)
NA=(n1**2-n2**2)**0.5
im=asin(NA)
im=im*180/%pi
thetac=thetac*180/%pi

//Result
mprintf("Critical angle= %f degrees",thetac)
mprintf("\nNumerical aperture= %f",NA)
mprintf("\nAcceptance angle= %f degrees",im)
