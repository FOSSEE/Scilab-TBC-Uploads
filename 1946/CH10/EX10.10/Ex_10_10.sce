// Example 10.10;//threshold quantum limit
clc;
clear;
close;
e=1.6*10^-19;
R=0.5;//responsivity in amper per watt
n=1;//efficiency for idea case
ht=6.62*10^-34;//plank constt.
f=3*10^14;//frequency in hertz
R=35;//mega bits per second
h=0.50^-6;//wavelength in metr
BER=10^-7;//bit error rate
Zm=-(log(BER));//probality of error
Po=(Zm*2*e*R*10^6)/2;
Podb=10*(log10(Po*10^3));//pulse energy in dB when refrence level is one milli watt
disp(Podb , "pulse energy in dB when refrence level is one miiliwatt in dBm")
