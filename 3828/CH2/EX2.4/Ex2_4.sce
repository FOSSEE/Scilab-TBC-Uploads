
//Chapter 2 : Diffraction

clear;

//Variable declaration
a=2*10**-4               //slit width                
lamda=6*10**-7           //wavelength

//Calculations
theta=asin(lamda/a)
TLW=4*theta/10**-2
theta1=asin(lamda/a)/10**-3

//Result
mprintf("Total linear width= %.1f cm",TLW)
mprintf("\nAngular position of the minima= %d*10**-3 radian",theta1)

