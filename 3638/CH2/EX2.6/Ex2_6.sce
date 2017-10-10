//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
n1=1.46;//refractive index of doped silica
n2=1.45;//refractive index of pure silica
thetac=asin(n2/n1);//critical angle for interface between doped silica and pure silica in radians
mprintf("Critical angle for interface between doped silica and pure silica=%.1f degrees",thetac*180/%pi);//multiplying by 180/pi to convert radians to degrees
