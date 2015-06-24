clc
clear
//Input data
P=1.5//The acoustic power produced by the loudspeaker in J/s
r=20//Distance in m

//Calculations
I=(P/(4*3.14*r^2))//Intensity of the sound produced by the loudspeaker in W/m^2
b=10*log10(I/10^-12)//Intensity level in dB

//Output
printf('The intensity level at a distance of %i m is %3.1f dB',r,b)
