//Example 3.5 // Thickness of quarter wave plate
clc;
clear;
//given data :
b=.172;//bifringe of plate
w=6D-7;// wavelength of light used in m
t=w/(4*(b));//thickness of  in m
t=t*100;// to convert in cm
disp(t,"thickness of quarter wave plate in cm")
