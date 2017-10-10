
//Chapter 2 : Diffraction

clear;

//Variable declaration
m=1                      //first minimum
lamda=6500*10**-10       //wavelength
a=2*10**-6               //slit width

//Calculations
theta=((asin((m*lamda)/a))*180/%pi)

//Result
mprintf("Angle of first minimum theta= %.2f degrees",theta)
