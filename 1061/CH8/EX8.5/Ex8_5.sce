//Ex:8.5
clc;
clear;
close;
r=45*10^-6;// radius in m
NA=0.3;// numerical aperture
rd=40;// radiance
A=3.14*(r*100)^2;// area in cm^2
pe=3.14*(1-r)*A*rd*NA^2;// optical power coupled into the fiber
Pe=pe*10^4;// optical power coupled into the fiber uW
printf("The optical power coupled into the fiber =%f uW", Pe);