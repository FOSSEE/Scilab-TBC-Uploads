//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 8.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=1300e-9;//operating wavelength of single mode fiber in m
omega=5e-6;//spot size of fiber in m
n1=1.45;//refractive index of core
n2=1.45;//refractive index of cladding
D=20e-6;//longitudinal misalignment in m
Dbar=D*lambda0/(2*(%pi)*n1*(omega^2));//dimensionless normalized separation 
mprintf("Dbar=%f",Dbar);//The answers vary due to round off error
alphat=10*log10(1+(Dbar^2));//corresponding value of splice loss due to longitudinal misalignment in dB
mprintf("\n Corresponding value of splice loss=%.2f dB",alphat);
