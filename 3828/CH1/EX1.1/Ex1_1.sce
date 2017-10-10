//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5890*10**-8    //wavelength
myu=1.6              //refractive index
m=12                 //order of the fringe

//Calculations
t=(lamda*m)/(myu-1)/10**-6

//Result
mprintf("Thickness of sheet= %d*10**-8 cm",t)

