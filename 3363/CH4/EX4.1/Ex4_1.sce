//Example 4.1, Page 105
clc
disp('Part b')
rho=9*10^9//in nt-m2/coul2
e=1.6*10^-19//coul
r=1*10^-10//in m
k=(rho*e^2)/(r^3)//nt/m
m=9.11*10^-31//in kg
c=3*10^8//in m/s
v=(1/(2*%pi))*sqrt(k/m)
lambda=c/v
printf("\n The wavelength is %e m ",lambda)