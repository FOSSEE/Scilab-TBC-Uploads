//Example 3.3 // Thickness of doubly refracting crystal
clc;
clear;
//given data :
Uo=1.55;//refractive index for O ray
Ue=1.54;//refractive index for E ray
w=6D-7;// wavelength of light used in m
p=w/2;// path difference in m
t=w/(2*(Uo-Ue));//thickness of  in m
disp(t*1D2,"thickness of doubly refracting crystal in cm") 
