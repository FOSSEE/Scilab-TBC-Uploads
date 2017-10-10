
//Chapter 2 : Diffraction

clear;

//Variable declaration
m=1                      //first minimum
lamda=6000*10**-10       //wavelength
theta=(35*%pi/180)   //angle in radians

//Calculations
a=(m*lamda)/sin(theta)/10**-6

//Result
mprintf("Width of the slit a= %.2f micro-m",a)

