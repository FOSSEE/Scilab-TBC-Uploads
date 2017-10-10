//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
n1=1.45;//refractive index of silica
n2=1;//refractive index of air
thetac=asin(n2/n1);//critical angle for the air-silica interface in radians
mprintf("Critical angle for air-silica interface=%.1f degrees",thetac*180/%pi);//multiplying by 180/pi to convert radians to degrees

