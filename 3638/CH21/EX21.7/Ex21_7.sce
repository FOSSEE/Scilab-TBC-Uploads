//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.7
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
//Let A be the perturbation of length in m
A=0.2e-6;

//Rearranging the terms of the equation 'ne1-lambda0/A=ns*cos(Thetas0)', we get:
Thetas0=acosd((ne1-lambda0/A)/ns);
mprintf("\n Thetas0 = %.1f degrees",Thetas0);

//Rearranging the terms of the equation 'ne2-lambda0/A=ns*cos(Thetas1)', we get:
Thetas1=acosd((ne2-lambda0/A)/ns);
mprintf("\n Thetas1 = %.1f degrees",Thetas1);
