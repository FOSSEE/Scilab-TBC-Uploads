//Example 16_8
clc();
clear;
//To find out the speed of the proton
k=9*10^9       //Units in N meter^2/C^2
q=5*10^-6 //Units in C
r=0.5       //Units in meters
v1=(k*q)/r   //Units in V
q=1.6*10^-19         //Units in V
m=1.672*10^-27         //Units in Kg
v=sqrt((v1*q*2)/m)   //Units in V
printf("The speed of electron is v=%.2f meters/sec",v)
