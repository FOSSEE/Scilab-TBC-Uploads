clc
clear
//Input data
I=2//Sound intensity is doubled or Intensity ratio

//Calculations
b=10*log10(I)//Relative intensity in dB

//Output
printf('Increase in the acoustic intensity level is %3.2f dB',b)
