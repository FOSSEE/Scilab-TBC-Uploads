//Example 8_8
clc();
clear;
//To calculate fundamental frequency of piezo electric crystal
l=3*10^-3                        //units in meters
Y=8*10^10                       //units in N/m^2
d=2.5*10^3                     //units in kg/m^3
v=(1/(2*l))*sqrt(Y/d)
printf("Frequency=%d Hz",v)
