clear
clc
//to find intensity  and sound level of sound wave

// GIVEN:
//radiated power
p = 25//in W
//distance from source
r = 2.5//in meters
//intensity of sound having sound level 0 dB
I0 = 1*10^-12//in W/m^2

// SOLUTION
//using equation of sound wave
//intensity of sound wave
I = p/(4*%pi*r^2)//in W/m^2
//sound level of sound wave
SL = 10*(log10(I/I0))//in dB

printf ("\n\n Intensity of sound wave I = \n\n %.2f W/m^2 ",I)
printf ("\n\n Sound level of sound wave SL = \n\n %3i dB ",SL)
