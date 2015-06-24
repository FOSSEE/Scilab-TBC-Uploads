clc
clear
//INPUT DATA
I=1000//sound intensity of plane leaving the runway in Wm^-2
Io=10^-12//threshold intensity of sound in Wm^-2

//CALCULATION
IL=(10*log10(I/Io))//The intensity level of a plane just leaving the runway in dB

//OUTPUT
printf('The intensity level of a plane just leaving the runway is %i dB',IL)
