//fiber optic communications by joseph c. palais
//example 9.3
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc;
clear all;
n2=1.5//Assuming refractive index of glass fiber
n1=1//refractive index if air
R=((n1-n2)/(n1+n2))^2// fraction of light reflected 
//to find
LR=-10*log10(R)//Return loss in dB
mprintf('Return loss=%fdB',LR)

