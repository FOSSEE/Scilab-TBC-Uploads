//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
nf=1.51;//refractive index of film
ns=1.50;//refractive index of substrate
nc=1.0;//refractive index of cover
d=4e-6;//thickness of film in m
lambda0=0.6e-6;//Wavelength in m
ne1=1.50862;//Corresponding effective refractive index for core
ne2=1.5046;//Corresponding effective refractive index for cladding
k0=2*(%pi)/lambda0;//free space wave number in rad/m
//Let A be the period of perturbation in m

A=lambda0/(ne1-ne2);
mprintf("\n A= %.1f um",A/1e-6);//Division by 10^(-6) to convert into um

d1=d+1/(k0*sqrt(ne1^2-ns^2))+1/(k0*sqrt(ne1^2-nc^2));//Effective waveguide thickness for mode 1 in m
mprintf("\n d1= %.3f um",d1/1e-6);//Division by 10^(-6) to convert into um
d2=d+1/(k0*sqrt(ne2^2-ns^2))+1/(k0*sqrt(ne2^2-nc^2));//Effective waveguide thickness for mode 2 in m
mprintf("\n d2= %.3f um",d2/1e-6);//Division by 10^(-6) to convert into um
//Assuming h=0.01um in expression for k, we get:
k=%pi/lambda0*0.01e-6*sqrt(((nf^2-ne1^2)*(nf^2-nc^2))/d1*d2*ne1*ne2);//Coupling coefficient in m^-1
mprintf("\n k=%.3f cm^(-1)",k*1e2);//Multiplying by 10^2 to convert into cm^(-1)
//The answers vary due to round off error
L=%pi/(2*k);//Length for complete power transfer in m
mprintf("\n L=%.2f cm",L/1e2);//Division by 10^2 to convert into cm
//The answers vary due to round off error
