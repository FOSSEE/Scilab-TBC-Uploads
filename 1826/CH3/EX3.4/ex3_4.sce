// Example 3.4, page no-91
clear
clc
v=24800
n=1
lam=1.54*10^-10//m
ga=15.8 //degree
//(i)
d=n*lam/(2*sin(ga*%pi/180))
printf("\n(i)\ngrating spacinf for NaCl crystal =%f *10^-10 m",d*10^10)
//(ii)
lam_min=12400/v
lam_min=lam_min*10^-10
theta=asin(n*lam_min/(2*d))
theta=theta*180/%pi
printf("\n(ii)\nglancing angle for minimum wavelength = %f degrees",theta)
