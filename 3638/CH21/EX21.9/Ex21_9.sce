//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.9
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
//Since the peak reflectivity of fiber is 0.85,
R=0.85;//Reflection coefficient of fiber
L=1e-2;//Length of interaction in m
lambda0=1.55e-6;//Central wavelength in m
neff=1.46;//Corresponding value of effective index in LP01 mode

//Now, (tanh(k*L))^2=R
//Rearranging terms, we get:
k=atanh(sqrt(R))/L;//Corresponding coupling coefficient in m^(-1)
mprintf("\n k=%.3f m^(-1)",k);//The answer provided in the textbook is wrong

//Let A be the perturbation of length in m
A=lambda0/(2*neff);
mprintf("\n A=%.2f nm",A/1e-9);//Division by 10^(-9) to convert into nm
//The answers vary due to round off error

DeltaLambda=lambda0^2/(%pi*neff*L)*sqrt((k*L)^2+(%pi)^2);//Corresponding bandwidth in m
mprintf("\n DeltaLambda=%.2f nm",DeltaLambda/1e-9);//Division by 10^(-9) to convert into nm
//The answer provided in the textbook is wrong
