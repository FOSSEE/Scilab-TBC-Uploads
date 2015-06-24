//Example 3.8 // Phase retardation
clc;
clear;
//given data :
Uo=1.5508;//refractive index for O ray
Ue=1.5418;//refractive index for E ray
w=5D-7;// wavelength of light used in m
t=.000032;// thickness of plate in m
p=2*%pi*(Uo-Ue)*t/w;//phase retardation in radian
disp(p,"phase retardation in radian")
