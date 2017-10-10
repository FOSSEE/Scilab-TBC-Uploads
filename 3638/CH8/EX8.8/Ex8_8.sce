//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 8.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=1.3e-6;//operating wavelength of single mode fiber in m
thetah=2.74;//angle corresponding to 3 dB point in degrees
k0=2*%pi/lambda0;//free space wave number in rad/m
omega=sqrt(2*log(2))/(k0*sind(2.74));//corresponding spot size of fiber in m
d=2*omega;//corresponding value of Gaussian mode field diameter in m
mprintf("Corresponding mode field diameter=%f um",d/1e-6)//division by 1e-6 to convert in um 
//The answer provided in the textbook is wrong
