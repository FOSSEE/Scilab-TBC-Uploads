// Example 8.5;//minumum incident optical power
clc;
clear;
close;
nmax=732;//
c=3*10^8;//m/s
ht=6.62*10^-34;//plank constt.
B=10^7;//NO. OF BITS
h=1*10^-6;//wavelength in meter
Po=((nmax*ht*B*c)/(2*h))*10^12;//pulse energy in pico Watt
Podb=10*(log10(Po));//pulse energy in dB when refrence level is one Watt
Podb1=10*(log10(Po*10^-9));//pulse energy in dB when refrence level is one mili Watt
disp(Podb1 , "pulse energy at bit rate of 10 M bit s^-1 in dBm")
B1=14*10^7;//NO. OF BITS
Po1=((nmax*ht*B1*c)/(2*h))*10^12;//pulse energy in pico Watt
Podb1=10*(log10(Po1));//pulse energy in dB when refrence level is one Watt
Podb2=10*(log10(Po1*10^-9));//pulse energy in dB when refrence level is one mili Watt
disp(Podb2 , "pulse energy at bit rate of 140 M bit s^-1 in dBm")
//at 10 M bit s^-1 power is calc ulated wrong in the book

