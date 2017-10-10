//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 17.9
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
a=5e-6;//Fiber core radius in m
NA=0.09;//Numerical aperture of the fiber
lambda0=1.3e-6;//Wavelength of radiation to be reflected from a Bragg grating

V=2*%pi*a*NA/lambda0;//Corrseponding dimensionless V number
mprintf("\n V=%f",V);//The answers vary due to round off error

//Since W0=(0.65+1.619/V^(3/2)+2.879/V^6)*a ,  where W0 is the mode spot size in m
//Let W0=m*a , where m=0.65+1.619/V^(3/2)+2.879/V^6
m=0.65+1.619/V^(3/2)+2.879/V^6;
mprintf("\n W0/a=%f",m);//The answers vary due to round off error

//Given that I=1-exp(-2*(a/W0)^2);
I=1-exp(-2/m^2);//From the assumption that m=W0/a
mprintf("\n I=%.2f",I);
