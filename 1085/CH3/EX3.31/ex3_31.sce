//Exam:3.31
clc;
clear;
close;
//Miller indices of plane
n=1;
h=1;
k=1;
l=1;
angle=30;//in degree
wavelength=2;//in angstrom
d=n*wavelength/(2*sind(angle));//interplanar spacing
a=d*(h^2+k^2+l^2)^(1/2);//interatomic spacing
disp(a,'interatomic spacing(in angstrom)=');