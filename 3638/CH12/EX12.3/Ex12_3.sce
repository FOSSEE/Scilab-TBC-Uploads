//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 12.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given 
epsilon=10.5e-13;//permittivity of Si in F/cm
d=500e-4;//diameter of Si detector in cm
w=20e-4;//width of depletion layer in cm
A=%pi*((d/2)^2);//Area of detector in cm^2
Cd=epsilon*A/d;//Junction capacitance in F
mprintf("\n The junction capacitance Cd=%f pF",Cd/1e-12);//division by 10^(-12) to convert into pF 
//The answer provided in the textbook is wrong
