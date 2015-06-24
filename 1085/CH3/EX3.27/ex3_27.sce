//Exam:3.27
clc;
clear;
close;
//Miller indices of plane
h=1;
k=1;
l=1;
wavelength=0.54;//in angstrom
a=3.57;//size of a cube
n=1;
d_111=a/(h^2+k^2+l^2)^(1/2);//interplanar spacing(in Angstrom)
angle=asind(n*wavelength/(2*d_111));
disp(angle,'Bragg angle(in degree)=');