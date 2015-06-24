//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.7w
//calculation of the energy delivered to the microphone

//given data
A=.80*10^-4//area(in m^2) of the cross section
U=3//power(in W0 output of the speaker
d=2//distance(in m) between the microphone and the speaker
t=5//time(in s) taken

//calculation
U0=A*U/(4*%pi*d^2)//energy falling on the microphone in 1 s
Udash=U0*t//energy falling on the microphone in t s

printf('the energy delivered to the microphone in t=5 s is %d microJ',round(Udash*10^6))
