//Exam:3.26
clc;
clear;
close;
wavelength=0.58;//in Angstrom
angle=9.5;//in degree
n=1;//First order
d_200=wavelength*n/(2*sind(angle));//interplanar spacing(in Angstrom)
//Miller indices of plane
h=2;
k=0;
l=0;
a=d_200*(h^2+k^2+l^2)^(1/2);//Size of unit cell(in Angstrom)
disp(a,'Size of unit cell(in Angstrom)=');