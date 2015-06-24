//Example 3.6 // Thickness of Calcite plate
clc;
clear;
//given data :
Uo=1.658;//refractive index for O ray
Ue=1.486;//refractive index for E ray
w=589D-9;// wavelength of light used in m
n=1;//integer for odd multiples
t=(2*n-1)*w/(4*(Uo-Ue));//thickness of Calcite plate in m
t=t*100;// to convert in cm
disp(t,"thickness of Calcite plate in cm")
