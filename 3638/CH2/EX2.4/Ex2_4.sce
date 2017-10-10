//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given Case(1)
n1=1;//refractive index of air
n2=1.45;//refractive index of silica
R=[(n1-n2)/(n1+n2)]^2;//corresponding energy reflection coefficient
mprintf("Energy reflection coefficient for air-silica interface=%.2f",R);
//given Case(2)
n1=1;//refractive index of air
n2=3.6;//refractive index of GaAs
R=[(n1-n2)/(n1+n2)]^2;//corresponding energy reflection coefficient
mprintf("\n Energy reflection coefficient for GaAs-air interface=%.2f",R);
