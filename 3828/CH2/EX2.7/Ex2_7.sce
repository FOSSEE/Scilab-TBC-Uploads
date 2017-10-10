
//Chapter 2 : Diffraction

clear;

//Variable declaration
lamda=5000*10**-8          //wavelength
N=4000                     //number of lines for diffraction grating
n=3                        //third order 

//Calculations
theta=((asin(n*lamda*N))*180/%pi)

//Result
mprintf("Dispersive power in third order spectum= %.2f degrees",theta)

