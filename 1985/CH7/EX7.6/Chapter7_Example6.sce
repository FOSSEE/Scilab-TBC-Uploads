clc
clear
//Input data
b1=80//Intensity levelof the sound produced by the electric generator in dB
b2=70//Intensity level of the room in dB

//Calculations
I2=10^(b1/10)*10^-12//Intensity of the sound produced by the electric generator in W/m^2
I4=10^(b2/10)*10^-12//Intensity of the sound existing in the room in W/m^2
I=I2+I4//Total sound intensity when the generator is operating in W/m^2
b=10*log10(I/10^-12)//Relative intensity in dB

//Output
printf('The resultant intensity level of the sound is %3.3f dB',b)

