//Example 7.4 // solar energy
clc;
clear;
//given data :
r=1.5D11;//distance from sun to earth
P=3.8D26;//power radiated by sun
N=P/(4*%pi*(r^2));// poyting vector (average energy)
N=N*60/4.2D4 ;//to convert watt/m2 into cal/cm2.min
N=ceil(N);
disp(N," average solar energy in cal/cm2.min")
