//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 10.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
n1=1.450840;//refractive index of core
n2=1.446918;//refractive imdex of cladding
a=4.1e-6;//radius of core in m
n=2*%pi*a*sqrt((n1^2)-(n2^2))//numerator of the corresponding V number
//corresponding V number expression where lambda0 is in nm
mprintf("V=%.1f/lambda0",n*1e9);//multiplying numerator by 10^9 to convert lambda0 in nm
//For cutoff wavelength:
V=2.4048;
//Since V=n/lambda0
lambda0=n/V;//cutoff wavelength of single mode fiber in m
mprintf("\n The cutoff wavelength is %.1f nm",lambda0/1e-9);//Division by 10^(-9) to convert into nm
