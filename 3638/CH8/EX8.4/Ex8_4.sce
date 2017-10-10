//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 8.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=1300e-9;//operating wavelength of single mode fiber in m
omega=5e-6;//spot size of fiber in m
n1=1.45;//refractive index of core
n2=1.45;//refractive index of cladding
alphat=0.1;//maximum value of splice loss due to angular misalignment in dB
theta=sqrt(alphat*(lambda0^2)/(4.34*((%pi)*n1*omega)^2));//corresponding maximum value of angular misalignment in radians
mprintf("Maximum value of theta=%.1f degrees",theta*180/(%pi));//multiplying by 180/pi to convert in degrees
