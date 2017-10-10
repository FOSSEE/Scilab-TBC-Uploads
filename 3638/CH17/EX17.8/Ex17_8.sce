//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 17.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
//Since the reflectivity of fiber is 99%,
R=0.99;//Reflection coefficient of fiber
lambdaB=1550e-9;//Bragg wavelength in m
neff=1.45;//Corresponding value of effective index in LP01 mode
DeltaLambda=1e-9;//Bandwidth of reflection spectrum in m
I=0.75;//Typical value of transverse overlap integral of modal distribution

//Now, (tanh(k*L))^2=R
//Rearranging terms, we get:  k*L=atanh(sqrt(R))
//Let m=k*L
m=atanh(sqrt(R));

//Rearranging terms of expression DeltaLambda=lambdaB^2/(%pi*neff*L)*sqrt((k*L)^2+(%pi)^2) , we get
L=lambdaB^2/(%pi*neff*DeltaLambda)*sqrt(m^2+(%pi)^2)//Since m=k*L
//Length of fiber in m
mprintf("\n L=%.2f mm",L/1e-3);//Division by 10^(-3) to convert into mm

//Rearranging terms of m=k*L, we get:
k=m/L;//Corresponding coupling coefficient in m^(-1)

//Rearranging terms of expression k=%pi*Deltan*I/lambdaB
Deltan=k*lambdaB/(%pi*I);//Change in refractive index
mprintf("\n Deltan=%.2e",Deltan);//Unitless quantity
