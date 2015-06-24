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
Emin=(20.7*h*f)/n;
disp(Emin , "this is the quantum limit")
