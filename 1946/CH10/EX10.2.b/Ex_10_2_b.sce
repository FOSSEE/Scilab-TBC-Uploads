// Example 10.2.a;//threshold quantum limit
clc;
clear;
close;
n=1;//efficiency for idea case
ht=6.62*10^-34;//plank constt.
f=3*10^14;//frequency in hertz
B=10^7;//NO. OF BITS
h=10^-6;//wavelength in metr
BER=10^-9;//bit error rate
Zm=-(log(BER));//probality of error
Po=((20.7*ht*f*B)/(2*n))*10^12;//pulse energy in pico watt
Podb=10*(log10(Po*10^-12));//pulse energy in dB when refrence level is one watt
Podb1=10*(log10(Po*10^-9));//pulse energy in dB when refrence level is one miili watt
disp(Podb , "pulse energy in dB when refrence level is one watt in dBW")
disp(Podb1 , "pulse energy in dB when refrence level is one miiliwatt in dBm")
