//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5893*10**-8    //wavelength
myu=1.55             //refractive index
n=10                 //order of the fringe

//Calculations
t=(lamda*n)/(myu-1)/(10**-3)*10**3

//Result
mprintf("Thickness of sheet= %.2f*10**-8 cm",t)

