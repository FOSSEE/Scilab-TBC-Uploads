//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.4w
//calculation of the minimum separation between the two points for a given phase difference 

//given data
nu=10*10^3//frequency(in Hz) of the sound wave
v=340//speed(in m/s) of the wave
delta=60//phase difference(in degree)

//calculation
lambda=v/nu//wavelength
k=2*%pi/lambda//wave number
d=(delta*%pi/180)/k

printf('the minimum separation between the two points for phase difference of 60 degree is %3.2f cm',d*10^2)
