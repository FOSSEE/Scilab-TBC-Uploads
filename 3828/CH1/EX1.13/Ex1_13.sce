//Chapter 1 : Wave Optics

clear;

//Variable declaration
dn=0.3                //diameter of ring 5
lamda=5.895*10**-5    //wavelenght
R=100
n=5

//Calculation
myu=(4*R*n*lamda)/dn**2

//Result
mprintf("Refractive index of liquid= %.2f ",myu)

