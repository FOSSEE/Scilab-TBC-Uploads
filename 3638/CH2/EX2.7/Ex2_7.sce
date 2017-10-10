//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.7
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given Case(1)
lambda=850e-9;//wavelength of LED in m
deltalambda=30e-9;//spacing between wavelengths in m
lc=(lambda)^2/deltalambda;//Corresponding coherence length
mprintf("Coherence length of LED=%.1f um",lc/1e-6);//Dividing by 10^(-6) to convert in micrometers
//The answers vary due to round off error
//given Case(2)
lambda=850e-9;//wavelength of laser diode in m
deltalambda=2e-9;//spacing between wavelengths in m
lc=(lambda)^2/deltalambda;//Corresponding coherence length
mprintf("\n Coherence length of laser diode=%.2f mm",lc/1e-3);//Dividing by 10^(-3) to convert in millimeters
