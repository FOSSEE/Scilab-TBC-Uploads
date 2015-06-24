//Example 1.28 // thickness of flim
clc;
clear;
//given data :
w=589D-9;//wavelength of light used in m
u=1.45;// refractive index of medium between lens and plate
n=6.5;// fringes shifted
t=n*w/(2*(u-1));// thickness of flim in m
t=t*1D9;//to convert in nano meter
disp(t,"thickness of flim in nm(nanometer)")
