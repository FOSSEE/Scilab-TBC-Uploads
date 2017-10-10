//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 8.7
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=633e-9;//operating wavelength of single mode fiber in m
MFD=5e-6;//mode field diameter of fiber in m
omega=MFD/2;//corresponding spot size of fiber in m
thetae=asind(lambda0/(%pi*omega));//corresponding value of angle in degrees where amplitude falls to 1/e of maximum value
mprintf("Corresponding value of angle=%.2f degrees",thetae);
