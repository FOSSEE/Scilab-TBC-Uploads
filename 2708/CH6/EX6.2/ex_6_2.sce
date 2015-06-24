//Example 6.2 // Maximum velocity in SHM 
clc;
clear;
//given data :
A=.06;// Amplitude of SHM in m
T=31.4;// period in sec
w=2*%pi/T;// angular frequency in rad/sec
V=A*w;// maximum velocity in m/s
disp(V,"Maximum velocity in m/s" )
