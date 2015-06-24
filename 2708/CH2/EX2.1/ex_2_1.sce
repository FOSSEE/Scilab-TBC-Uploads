//Example 2.1 // Half angular width of differation pattern
clc;
clear;
//given data :
w=6D-7;// wavelength of monochromatic light in m
a=12D-7;// slit width in m
theta=asin(w/a);//half angular width of central bright maxima
theta=theta*180/%pi;// to convert in degree
disp(theta,"Half angular width of central bright maxima in degree")
