// Problem no 15.10,Page no.357

clc;clear;
close;

D=0.8 //m //Diameter
t=0.01 //m //Thickness 
p=5*10**6 //Pa //Pressure
m=1*0.25**-1
E=200*10**9 //Pa

//Calculations

sigma_1=5*10**6*0.8*(4*0.01)**-1 //stress
sigma_2=sigma_1
e_1=sigma_1*E**-1-sigma_2*(m*E)**-1 //strain
e_v=3*e_1
V=4*3**-1*%pi*(D*2**-1)**3 //m**3  tress
dell_v=e_v*V*10**6 //cm**3

//Result
printf("Volume of additional Fluid %.3f cm^3",dell_v)
