//Chapter 1 : Wave Optics

clear;

//Variable declaration
Dm=0.590              //diameter of ring 15
Dn=0.336              //diameter of ring 5
lamda=5890*10**-8
m=15
n=5

//Calculation
R=(Dm**2-Dn**2)/(4*lamda*(m-n))

//Result
mprintf("Radius of curvature= %0.1f cm",R)

