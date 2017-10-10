
//Example 16_6
clc();
clear;
//To calculate the speed just before it strikes it
va=8*10^6       //Units in meters/sec
q=1.6*10^-19       //Units in C
m=1.67*10^-27      //Units in Kg
vab=20000 //Units in V
vb=sqrt(va^2-((2*q*vab)/m))      //Units in meters/sec
printf("The speed of proton before it strikes is Vb=%.1f meters/sec",vb)
