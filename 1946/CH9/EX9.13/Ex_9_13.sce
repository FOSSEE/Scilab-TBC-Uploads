// Example 9.13;//output photo current
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
rp=10^11;//photons per second
hf=1.28*10^19;// energy in joule
n=1;//efficency
C=3*10^8;//SPEED of light in meter per second
ht=6.62*10^-34;//plank constt.
Po=(rp/hf)*10^9;//incident optical power in micro watt
Ip=(n*Po*10^-6*e)/(hf);//output photo current
disp(Ip,"output photo current in ampere is")
