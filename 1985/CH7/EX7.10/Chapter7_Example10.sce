clc
clear
//Input data
I2=100//Sound intensity in W/m^2

//Calculations
b=10*log10(I2/10^-12)//Relative intensity in dB

//Output
printf('The intensity level of the jet plane is %3.0f dB',b)
