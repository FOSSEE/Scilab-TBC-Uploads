//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 17.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
n2=1.45;//refractive imdex of cladding
NA=0.1;//Numerical aperture of the fiber
a=3e-6;//radius of core in m
n=2*%pi*a*NA;//numerator of the corresponding V number

//For cutoff wavelength:
V=2.4048;
//Since V=n/lambda0
lambdac=n/V;//cutoff wavelength of single mode fiber in m
mprintf("\n The cutoff wavelength is %.3f um",lambdac/1e-6);//Division by 10^(-6) to convert into um

//Now, For lambdaB=850 nm:
lambdaB=850e-9;//Bragg wavelength in m
neff=1.4517;//Corresponding value of effective index in LP01 mode

//Let A be grating period
A=lambdaB/(2*neff);//Grating period in m
mprintf("\n Grating period= %.3f um",A/1e-6);//Division by 10^(-6) to convert into um
//The answers vary due to round off error
