//Example 5.23
clear;
clc;

//Given
//log10(P)=-(1246.038/(t+221.354))+6.95926 vapour pressure in mm Hg as a function of temperature in oC
T=298;//temperature in K

//To determine the  delHv
//delHv=R*(T^2)*(dlogP/dT) by clausius clapeyron equation
delHv=((2.303*1246.038*R*(T^2))/((T-51.796)^2))*0.001;//latent heat of vapourization in kJ mol^-1
mprintf('The latent heat of vapourization delHv of thiophene = %f kJ mol^-1',delHv);
//end