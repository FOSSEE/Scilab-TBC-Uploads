//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5890*10**-8    //wavelength
myu=1.5              //refractive index of glass
n=1                  //first minimum
r=60                 //angle in degrees

//Calculations
t=(n*lamda)/(2*myu*0.5)/10**-5

//Result
mprintf("Minimum thickness of the film t= %.5f*10**-5 cm",t)
//The answer provided in the textbook is incorrect

