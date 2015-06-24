// Example 8.2.b //minumum incident optical power
clc;
clear;
close;
en=10^-9;
n=-log(en);//
c=3*10^8;//m/s
ht=6.62*10^-34;//plank constt.
B=10^7;//NO. OF BITS
h=0.85*10^-6;//wavelength in meter
Po=((20.7*ht*B*c)/(2*h));//pulse energy in pico Watt
Podb=10*(log10(Po));//pulse energy in dB when refrence level is one Watt
Podb1=10*(log10(Po*10^3));//pulse energy in dB when refrence level is one mili Watt
disp(Po, "minimum incident optical power in Watts is")
disp(Podb1 , "pulse energy in dB when refrence level is one miiliwatt in dBm")

