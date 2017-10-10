//Chapter 1 : Wave Optics

clear;

//Variable declaration
myu=4/3
Dn=0.5                 //diameter of 10th ring
lamda=5895*10**-8
n=6
R=100
r=0.15

//Calculation
myu=(((2*n)-1)*lamda*R)/(2*r**2)

//Result
mprintf("Refractive index of liquid= %.3f ",myu)

