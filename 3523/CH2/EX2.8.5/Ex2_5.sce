//Example 5 // Ch 2
clc;
clear;
close;
// given data :
R=0.25; // in meter sphere radius
R1=0.75;//gap b/w two spheres in meters
S=1; // in meter is equal to R1+R2
S1=0.067; // in meter 
S2=0.0048;
S3=0.01795;
S4=0.00128;
Epsilon_o=8.85*1e-12;
Q1 = %pi*Epsilon_o;

Q=Q1/(2*%pi*Epsilon_o);
Qp=S1*Q;
Qpp=S2*Q;
F1=Q/R^2+Qp/(R-S1)^2+Qpp/(R-S1)^2;

Qs=0.25*Q;
Qsp=0.01795*Q;
Qspp=0.00128*Q;
F2=Qs/(R1-S1)^2+Qsp/(R1-S1)^2+Qspp/(R1-S1)^2

E=F1+F2

printf("Max field at surface is %e V/m",E)
// NOTE: answer in the book is wrong as Q = Q1/2*%pi*Epsilon_o

