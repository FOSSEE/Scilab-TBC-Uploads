//Example 2_14
clc();
clear;
//To find the angular separation between two wave lengths
N=6*10^5                        //units in lines per meter
m=3
lemda1=500*10^-9               //units in meters
lemda2=510*10^-9              //units in meters
theta1=asin(m*N*lemda1)*180/%pi
theta2=asin(m*N*lemda2)*180/%pi
theta=(theta2-theta1)
printf("The angular separation between two wave lengths is %.2f degrees",theta)
