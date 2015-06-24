// Example 4.9, page no-154
clear
clc

p=100        //Antenna power in W
pd=10        //Power Density in mW/m^2
d=1000       //distance in m
p2=10000     // New antenna power
directivity=10*log10(p2/p)
printf("Directivity (in dB)= %d dB",directivity)
