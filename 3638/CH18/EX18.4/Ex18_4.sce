//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 18.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
S=3.4e-4;//Sensitivity of the sensing element in rad/Pa/m
DeltaMin=3.6e-8;//Minimum detectable phase change in rad
L=1;//Length of sensing element in m

Pmin=DeltaMin/(L*S);//Corresponding minimum detectable pressure in Pa
mprintf("\n Pmin= %.1e Pa",Pmin);//The answers vary due to round off error
