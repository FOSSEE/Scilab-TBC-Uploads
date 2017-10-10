//Example 5.22
clear;
clc;

//Given
//log10(P)=(-834.13/T)+(1.75*log(T))-(8.375*0.001*T)+5.3234 pressure in mm of Hg as a function og temperature in K
Tb=169.25;//boiling point of ethylene in K
R=8.314;//gas constant in J K^-1 mol^-1

//To determine latent heat of vapourization delHv
//delHv=R*(T^2)*(dlogP/dT) by clausius clapeyron equation
delHv=((-R*834.13*2.303)+(1.75*R*Tb*2.303)-(8.375*2.303*0.001*R*(Tb^2)))*0.001;//latent heat of vapourization in kJ
mprintf('The latent heat of vapourization delHv of ethylene = %f kJ mol^-1',delHv);
//end