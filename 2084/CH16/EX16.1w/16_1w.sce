//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.1w
//calculation of the depth of the sea and wavelength of the signal in the water

//given data
nu=50*10^3//frequency(in Hz) of the given signal
t=0.8//time(in s)requires for reflected wave to return
v=1500//speed(in m/s) of the sound in water

//calculation
d=v*t/2//depth of the sea
lambda=v/nu//wavelength in water

printf('the depth of the sea is %d m',d)
printf('\nthe wavelength of the signal in the water is %3.1f cm',lambda*10^2)
