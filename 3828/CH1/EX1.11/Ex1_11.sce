//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda1=6000*10**-8           
lamda2=4500*10**-8
R=90                 //Radius of curvature
n=3

//Calculation
dn=sqrt(4*n*lamda1*R)

//Result
mprintf("Diameter of the nth ring= %0.4f cm" ,dn)

