//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5890*10**-10   //wavelength
myu=1.33             //refractive index of glass
n=1                  //first minimum
r=45                 //angle in degrees
cos_r=0.707

//Calculations
t=(n*lamda)/(2*myu*cos_r)/10**-7

//Result
mprintf("Thickness of the film t= %.3f*10**-4 mm",t) 

