//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 18.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=0.633e-6;//Operating wavelength in m
DeltaPhi=1e-6;//Phase change in rad
n=1.45;//refractive index of fiber

DeltaL=DeltaPhi/(2*%pi*n/lambda0);//Corresponding change in fiber length in m
mprintf("\n Corresponding change in fiber length = %.2e m",DeltaL);//The answers vary due to round off error
