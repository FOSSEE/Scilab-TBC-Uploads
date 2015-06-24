clc
clear
//INPUT DATA
I=10^-6//intensity of sound during heavy traffic in Wm^-2
Io=10^-12//threshold intensity of sound in Wm^-2

//CALCULATION
IL=(10*log10(I/Io))//The intensity level in dB

//OUTPUT
printf('The intensity level is %i dB',IL)
