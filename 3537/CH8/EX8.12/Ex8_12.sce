//Example 8_12
clc();
clear;
//To find the fundamental frequency
l=3*10^-3                             //units in meters
d=3.5*10^3                           //units in kg/m^3
Y=8*10^10                           //units in N/m^2
v=1/(2*l)*sqrt(Y/d)
v=v*10^-6   //units in Hz
printf("Fundamental Frequency v=%.3f Hz",v)
  
