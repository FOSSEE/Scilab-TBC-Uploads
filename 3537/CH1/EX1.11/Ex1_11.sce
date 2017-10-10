//Example 1_11
clc();
clear;
//To find the refractive index of oil
v=0.2      //units in cm
area=1  //units in m^2
area=area*10^4   //units in cm^2
t=v/area    //units in cm
n=1
lamda=5.5*10^-5      //units in cm
r=0      //units in degrees
u=(n*lamda)/(2*t*cos(r))
printf("Refractive index of oil is u=%.2f",u)
