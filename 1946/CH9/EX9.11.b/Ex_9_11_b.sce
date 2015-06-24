// Example 9.11.b;//Common emitter current gain
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
h=1.26;//wavelength in micro meter
C=3*10^8;//SPEED of light in meter per second
n=0.60;//efficiency
ht=6.62*10^-34;//plank constt.
Ic=15;//CURRENT IN milli ampere
Po=125;//output power in micro watt
Gc=(ht*C*Ic*10^-3)/(h*10^-6*e*Po*10^-6);//Gain
nfc=Gc/n;//Common emitter current gain
disp(nfc,"common emittergain is")
