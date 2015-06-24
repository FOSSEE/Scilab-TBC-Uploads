//Exa 1.7
clc;
clear;
close;
//given data

theta=16.8/2;//in degree
n=2;//order unitless
d=0.4;//in nm
lambda=(2*d*sin(theta*%pi/180))/n;//in Angstrum
disp(lambda,"wavelength of X-rays in Angstrum : ");
//Note: Ans in the book is not correct