clc
clear
//INPUT DATA
Q=3.56//rate of energy radiates in W
r=15//distance of intensity level in m
Io=100//reference intensity in Wm^-2

//CALCULATION
A=4*3.14*r*r//Area in m^2
I=(Q/A)//sound intensity in Wm^-2
IL=(10*log10(I/Io))//The intensity level in dB

//OUTPUT
printf('The intensity level is %3.3f dB',IL)
