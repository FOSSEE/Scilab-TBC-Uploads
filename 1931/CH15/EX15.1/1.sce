clc
clear
//INPUT DATA
t=0.1*10^-2//thickness of piezo electric crystal in m
E=80*10^9//Young's modulus of crystal in pa
d=2654//density of material of crystal in Kgm^-3

//CALCULATION
f=(1/(2*t)*sqrt(E/d))/10^6//The frequency to which a piezo electric oscillator circuit should be turned in Hz

//OUTPUT
printf('The frequency to which a piezo electric oscillator circuit should be turned is %3.4f*10^6 Hz',f)
