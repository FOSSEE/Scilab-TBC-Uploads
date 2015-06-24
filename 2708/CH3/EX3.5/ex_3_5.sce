//Example 3.5 // Thickness of quarter wave plate
clc;
clear;
//given data :
Uo=1.652;//refractive index for O ray
Ue=1.488;//refractive index for E ray
w=546D-9;// wavelength of light used in m
p=w/2;// path difference in m
t=w/(4*(Uo-Ue));//thickness of  in m
t=t*100;// to convert in cm
disp(t,"thickness of quarter wave plate in cm") 
