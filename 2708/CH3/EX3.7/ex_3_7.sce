//Example 3.7 // Amount of optical rotation
clc;
clear;
//given data :
Ur=1.55810;// refractive index for right handed polarized
Ul=1.55821;//refractive index for left handed polarized
w=4D-7;//wavelength of light used in m  
d=.002;// thickness of plate in m
R=%pi*d*(Ul-Ur)/w;// rotation in radian
R=R*180/%pi;// to convert in degree
disp(R,"Amount of optical rotation in degree")
// in book it is wrongly calculated
