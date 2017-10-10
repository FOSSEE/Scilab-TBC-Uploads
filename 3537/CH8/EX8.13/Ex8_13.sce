//Example 8_13
clc();
clear;
//To calculate the fundamental frequency
l=0.001       //units in mts
y=7.9*10^10     //units in N/mts^2
d=2650         //units in N/mts^2
v=sqrt(y/d)  //units in m/sec
toe=0.001  //units in m
V=v/(2*toe)   //units in Hz
printf("Fundamental frequency=%.2fHz",V)
