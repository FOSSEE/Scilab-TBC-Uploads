//Chapter 1 : Wave Optics

clear;

//Variable declaration
myu=4/3
Dn=0.5                 //diameter of 10th ring
lamda=6*10**-5
n=10

//Calculation
R=(myu*Dn**2)/(4*n*lamda)

//Result
mprintf("Radius of curvature= %.0f cm",R)

