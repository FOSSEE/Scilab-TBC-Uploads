//Example 2-7 b, Page No.36

clear
clc

pin_mW = 50
pout_mW = 2

gain_dB= 10*log10(pout_mW/pin_mW)

printf('The gain/attenuation of the amplifier is %.2f',gain_dB)
