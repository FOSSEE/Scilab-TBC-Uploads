//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5.1*10**-7     //wavelength
myu=4/3              //refractive index of glass
r=45                 //angle in degrees
sin_i=4/5
n=50

//Calculations
sin_r=sin_i/myu
cos_r=(1-sin_r**2)**0.5
t=(n*lamda)/(2*myu*cos_r)/10**-5

//Result
mprintf("Thickness of the film t= %.1f*10**-5 m",t)

