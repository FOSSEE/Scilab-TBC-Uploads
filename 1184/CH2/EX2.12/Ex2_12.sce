//Example 2-12, Page No - 40

clear 
clc

gain1 = 6.8 
gain2 = 14.3
attenuation1 = -16.4
attenuation2 = -2.9
vout = 800*10^-3

At = gain1+gain2+attenuation1+attenuation2
vin = vout/10^(At/20)

printf('The input voltage is %.1f mV',vin*10^3)
