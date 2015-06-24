clc
clear
//Input data
I=(10^-4)//Intensity of sound in the street in W/m^2

//Calculations
b=10*log10(I/10^-12)//Relative intensity in dB

//Output
printf('The relative sound intensity is %3.0f dB',b)
