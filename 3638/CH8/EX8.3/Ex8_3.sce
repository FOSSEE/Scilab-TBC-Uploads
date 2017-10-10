//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 8.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=1300e-9;//operating wavelength of single mode fiber in m
omega=5e-6;//spot size of fiber in m
alphat=0.1;//maximum value of loss in dB
u=sqrt(alphat*(omega^2)/4.34);//corresponding maximum value of transverse offset in m 
mprintf("Maximum value of u=%.2f um",u/1e-6);//division by 1e-6 to convert in um
