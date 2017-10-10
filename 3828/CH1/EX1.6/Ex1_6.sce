//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5890*10**-10   //wavelength
myu=1.5              //refractive index of glass
n=1                  //first minimum
r=60                 //angle in degrees

//Calculations
t=(n*lamda)/(2*myu*0.5)/10**-7

//Result
mprintf("Thickness of the film t= %.3f*10**-4 mm",t) 

