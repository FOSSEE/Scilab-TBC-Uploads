// Example 2.35, page no-51
clear
clc
e=1.6*10^-19//C

h=6.626*10^-34
m=9.1*10^-31//kg
ek=235.2*e
n=1
theta=9.21
lam=h/sqrt(2*m*ek)
d=n*lam/(2*sin(theta*%pi/180))
printf("\nThe deBroglie wavelength of electron is %.3f *10^-11 m\nThe interplanar spacing is %.3f *10^-10 m",lam*10^11,d*10^10)
