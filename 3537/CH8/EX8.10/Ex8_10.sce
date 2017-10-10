//Example 8_10
clc();
clear;
//To calculate the frequency of pure iron rod
l=40*10^-3                          //units in meter
d=7.25*10^3                         //units in kg/m^3
Y=115*10^9                         //units in N/m^3
v=(1/(2*l))*sqrt(Y/d)
printf("Natural frequency v=%.3f Hz",v)
