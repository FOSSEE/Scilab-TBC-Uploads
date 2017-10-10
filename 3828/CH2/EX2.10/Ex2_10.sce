
//Chapter 2 : Diffraction

clear;

//Variable declaration
lamda=6.5*10**-7         //wavelength
n=1                      //first order
theta=(15*%pi/180)   //angle in radians

//Calculations
d=(n*lamda)/sin(theta)/10**-6

//Result
mprintf("Grating element= %.3f*10**-6 m",d)

