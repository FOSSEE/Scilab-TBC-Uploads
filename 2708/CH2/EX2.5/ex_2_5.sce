//Example 2.5 // wavelength of light used
clc;
clear;
//given data :
c=1/5000;// grating element 
theta=%pi/6;//spectral line deviated 
n=2;//order of spectral line
w=(c*sin(theta))/(n);//wavelength in cm
w=w*1D8;//to convert in A
disp(w,"wavelength of ligth used in A") 
