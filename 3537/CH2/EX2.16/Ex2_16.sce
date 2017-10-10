//Example 2_16
clc();
clear;
//To find the angular separation of two lines of sodium in the first order spectrum
N=5*10^5                             //units in lines per meter
m=1
lemda1=5890*10^-10                  //units in meters
lemda2=5896*10^-10                  //units in meters
theta1=asin(m*N*lemda1)*180/%pi
theta2=asin(m*N*lemda2)*180/%pi
theta=(theta2-theta1)
printf("The angular separation is %.3f degrees",theta)
