//Chapter 1 : Wave Optics

clear;

//Variable declaration
Dm=0.50               //diameter of ring 1
lamda=5900*10**-8     //wavelenght
m=10

//Calculation
R=(Dm**2)/(4*lamda*m)/10**2*10**2

//Result
mprintf("Radius of curvature= %.2f cms",R)

