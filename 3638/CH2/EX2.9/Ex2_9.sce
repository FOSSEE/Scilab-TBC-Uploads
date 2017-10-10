//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.9
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=1300e-9;//wavelength of single-mode fiber in m
omega0=5e-6;//spot size of beam in m
theta=atan(lambda0/(%pi*omega0));//Corresponding divergence in radians
mprintf("Divergence of beam=%.2f degrees",theta*180/%pi);//multiplying by 180/pi to convert radians to degrees
