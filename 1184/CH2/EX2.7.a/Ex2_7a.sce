//Example 2-7 a, Page No.36

clear
clc

Vin=3*10^-3
Vout=5

gain_dB= 20*log10 (Vout/Vin)

printf('The gain of amplifier in dB is %.1f',gain_dB)

