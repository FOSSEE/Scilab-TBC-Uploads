clc;
clear all;
lamda=5461*1e-10;//wavelength of light
n=8;//no of frings
t=6*1e-6;//in meter
u=((n*lamda)/(2*t))+1;//refractive index of material
disp(u,'refractive index of material =');
