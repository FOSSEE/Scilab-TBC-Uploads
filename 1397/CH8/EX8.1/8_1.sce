//clc();
clear;
//To calculate refractive index of material of the core
NA=0.39;        //numerical aperture 
delta=0.05;     //fractional index change
A=sqrt(2*delta);
n1=NA/A;
printf("refractive index of the core is %f",n1);
