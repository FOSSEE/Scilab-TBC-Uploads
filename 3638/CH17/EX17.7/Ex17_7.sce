//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 17.7
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
//Since the peak reflectivity of fiber is 0.93%,
R=0.93;//Reflection coefficient of fiber
L=4.8e-3;//Length of fiber in m
lambdaB=1532.1e-9;//Bragg wavelength in m
neff=1.4517;//Corresponding value of effective index in LP01 mode
I=0.5;//Transverse overlap integral of modal distribution

//Now, (tanh(k*L))^2=R
//Rearranging terms, we get:
k=atanh(sqrt(R))/L;//Corresponding coupling coefficient in m^(-1)
mprintf("\n k=%.3f mm^(-1)",k/1e3);//Dividing by 10^3 to convert into mm^(-1)
//The answers vary due to round off error

//Rearranging terms of expression k=%pi*Deltan*I/lambdaB
Deltaneff=k*lambdaB/(%pi);//Change in effective refractive index
mprintf("\n Deltaneff=%.2e",Deltaneff);//Unitless quantity
//The answers vary due to round off error

DeltaLambda=lambdaB^2/(%pi*neff*L)*sqrt((k*L)^2+(%pi)^2);//Corresponding bandwidth in m
mprintf("\n DeltaLambda=%.2f nm",DeltaLambda/1e-9);//Division by 10^(-9) to convert into nm
