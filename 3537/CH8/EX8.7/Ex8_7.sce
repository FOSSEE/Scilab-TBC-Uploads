//Example 8_7
clc();
clear;
//To calculate the fundamental frequency of crystal
t=0.002                        //units in meters
V=5750                        //units in meter per second
v=V/(2*t)*10^-6
printf("The fundamental frequency of crystal %.4f MHz",v)
