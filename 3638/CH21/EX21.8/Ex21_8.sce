//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
//Since the peak reflectivity of fiber is 0.98,
R=0.98;//Reflection coefficient of fiber
L=1e-3;//Length of interaction in m
lambda0=1092e-9;//Central wavelength in m
neff=1.46;//Corresponding value of effective index in LP01 mode

//Now, (tanh(k*L))^2=R
//Rearranging terms, we get:
k=atanh(sqrt(R))/L;//Corresponding coupling coefficient in m^(-1)
mprintf("\n k=%.3f mm^(-1)",k/1e3);//Dividing by 10^3 to convert into mm^(-1)
//The answers vary due to round off error

//Let A be the perturbation of length in m
A=lambda0/(2*neff);
mprintf("\n A=%.2f um",A/1e-6);//Division by 10^(-6) to convert into um

DeltaLambda=lambda0*A/L;//Corresponding bandwidth in m
mprintf("\n DeltaLambda=%.2f nm",DeltaLambda/1e-9);//Division by 10^(-9) to convert into nm
//The answers vary due to round off error
