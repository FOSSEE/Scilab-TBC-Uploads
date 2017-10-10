
//Chapter 2 : Diffraction

clear;

//Variable declaration
theta=(30*%pi/180)  //angle in radians
lamda1=5400*10**-10     
n=3                     //third order

//Calculations
d=(n*lamda1)/sin(theta)*10**2/10**-4
N1=1/d/10**-1*10**3

//Result
mprintf("Grating element= %.2f*10**-4 cm",d)
mprintf("\nNumber of lines in 1 cm length of grating= %d",N1)
