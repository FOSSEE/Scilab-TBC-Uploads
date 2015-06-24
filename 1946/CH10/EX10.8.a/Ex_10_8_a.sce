// Example 10.8.a;//MIMIMUM PHOTO CURRENT
clc;
clear;
close;
x=1;
SNR=3.16*10^3;//SIGNAL TO NOISE RATIO
Fn=1,26;//Noise figure
K=1.38*10^-23;//boltzman constt
C=3*10^8;//SPEED of light in meter per second
e=1.6*10^-19;//elecronic charge
ht=6.62*10^-34;//plank constt.
B=10;//bandwidth in mega hertz
T=120;//tEMPERATURE IN KELVIN
Rl=10//Maximum lod resistance in killo ohm
Ip=(((SNR*((12*K*T*B*10^6*Fn)/(Rl*10^3))))/(((4*K*T*Fn)/(1.1*e*Rl*10^3)))^(2/3))^(3/4);//
disp(Ip,"Photo current in ampere")
