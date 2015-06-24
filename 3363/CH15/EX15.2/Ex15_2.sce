//Example 15.2, Page 533
clc;
c=3*10^8//m/s
k=500//Mev
p=(k)/(c*6.2*10^12)
h=6.63*10^-34//in j-s
lambda=h/p
angle=0.53//in rad
r=lambda/angle
printf("\n The wavelength is  %e  m",lambda)
printf("\n The angle is  %e  m",r)
