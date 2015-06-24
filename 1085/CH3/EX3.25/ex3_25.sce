//Exam:3.25
clc;
clear;
close;
Wavelength=1.54*10^(-10);//in meter
Angle=20.3;//in degree
n=1;//First order
d=Wavelength*n/(2*sind(Angle));//the interplanar spacing(in Meter)
disp(d/(10^-10),'the interplanar spacing between atomic plane(in A)=');