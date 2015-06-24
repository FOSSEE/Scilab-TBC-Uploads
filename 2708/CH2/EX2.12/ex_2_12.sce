//Example 2.12 //Difference of wavelengths
clc;
clear;
//part a
l=5;// length of grating
N=16000;// no. of lines per inch on the grating
w=6000;// wavelength used in A
n=2;// order of specrum
T=N*l;//total no. of lines on grating
R=T*n;// resolving power
disp(R,"resolving power..")
//part b
dw=w/(T*n);// wavelength can be resolved in A
disp(dw,"wavelength can be resolved in A")
