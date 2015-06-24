clc
clear
//Input data
I=0.1//Intensity of sound produced by thunder in W/m^2

//Calculations
b=10*log10(I/10^-12)//Relative intensity in dB

//Output
printf('The intensity level is %3.0f dB',b)
