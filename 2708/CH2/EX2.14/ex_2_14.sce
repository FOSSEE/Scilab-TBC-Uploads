//Example 2.14 //Resolving power
clc;
clear;
//given data
c=12.5D-5;// grating element in cm
w=5D-5;// wavelength used in cm
N=40000;//no. of lines on grating
n=c/w;// order for maximum resolving power
n=floor(n);//n should be integer
P=n*N;// maximum resolving power
disp(P,"Resolving power ")
