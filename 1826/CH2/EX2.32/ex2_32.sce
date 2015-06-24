// Example 2.32, page no-49
clear
clc
theta=20//in degrees
d=2*10^-10//m
n=1
h=6.626*10^-34
m=1.67*10^-27//kg
e=1.6*10^-19//C
lam=2*d*sin(theta*%pi/180)/n
E=(1/(2*m))*(h/lam)^(2)
printf("\nThe deBroglie wavelength of the neutron is %.3f *10^-10\nthe energy of the neutron is %.4f eV",lam*10^10,E/e)
