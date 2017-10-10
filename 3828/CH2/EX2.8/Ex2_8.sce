//Chapter 2 : Diffraction

clear;

//Variable declaration
N=5000                     //number of lines for diffraction grating
n=2                        //second order 
theta2=(30*%pi/180)    //angle in radians

//Calculations
lamda=sin(theta2)/(n*N)/10**-5*10**3

//Result
mprintf("Wavelength lamda= %.0f Armstrong",lamda)

