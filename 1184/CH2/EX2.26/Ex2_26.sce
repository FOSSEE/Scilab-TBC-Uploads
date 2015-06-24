//Example 2-26,Page No - 82

clear
clc

Vpeak =3
f=48*10^3

fifth_harmonic = 5*f
Vrms=(4/3.14)*(3/5)*0.707

printf('The frequency of the fifth harmonic is %.1f Khz',fifth_harmonic/10^3)
printf('\n The RMS voltage of the fifth harmonic is %.2f',Vrms)
