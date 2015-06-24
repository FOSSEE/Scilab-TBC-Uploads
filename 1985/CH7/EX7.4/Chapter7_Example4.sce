clc
clear
//Input data
P=3.14//Power radiated in W
r=10//Distance (radius) in m
I=[100,1,10^-12]//Reference intensities in W/m^2

//Calculations
Is=P/(4*3.14*r^2)//Intensity of sound in W/m^2
b1=10*log10(Is/I(1))//Relative intensity in dB
b2=10*log10(Is/I(2))//Relative intensity in dB
b3=10*log10(Is/I(3))//Relative intensity in dB

//Output
printf('The intensity level of a sound with reference to \n (i) %i W/m^2 = %3.4f dB \n (ii) %i W/m^2 = %3.4f dB \n (iii) 10^-12 W/m^2 = %3.3f dB',I(1),b1,I(2),b2,b3)
