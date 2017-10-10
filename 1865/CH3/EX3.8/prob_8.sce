
//Problem 8
//calculate the wavelength of X-rays used
clear
clc
d=2.81//interplanar spacing in A
n=1//order of beam
x=10//angle of first order beam with the incident beam
y=x/2//angle of incident
w=2*d*sind(y)// wavelength of X-rays used in A
printf('wavelength of X-rays used = %.2f A',w)