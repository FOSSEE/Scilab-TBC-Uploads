//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.15w
//calculation of the fundamental frequency if the air is replaced by hydrogen

//given data
nu0=500//fundamental frequency(in Hz)
rhoa=1.20//density(in kg/m^3) of air
rhoh=0.089//density(in kg/m^3) of hydrogen

//calculation
//fundamental frequency of an organ pipe is proportional to the speed of the sound
nu=nu0*sqrt(rhoa/rhoh)

printf('the fundamental frequency if the air is replaced by hydrogen is %d Hz',nu)
