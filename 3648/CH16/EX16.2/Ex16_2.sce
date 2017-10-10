//Example 16_2
clc();
clear;
//To calculate the speed of the proton
q=1.6*10^-19    //Units in C
vab=45    //Units in V
m=1.67*10^-27      //Units in Kg
va=sqrt((2*q*vab)/m)     //Units in meters/sec
printf("The speed of the proton is Vab=%.2f meters/sec",va)
