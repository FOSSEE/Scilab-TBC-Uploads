//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.4
//calculation of the increase in the sound level in decibels

//given data
r=20//intensity is increase by r factor

//calculation
//using the equation.....beta = 10*log(I/I0)...we get
deltabeta=10*log10(r)//increase in sound level

printf('the increase in the sound level in decibels is %d dB',deltabeta)
