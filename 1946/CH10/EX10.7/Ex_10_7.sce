// Example 10.7;//max SNR improvment 
clc;
clear;
close;
K=1.38*10^-23;//boltzman constt
C=3*10^8;//SPEED of light in meter per second
e=1.6*10^-19;//elecronic charge
ht=6.62*10^-34;//plank constt.
B=50;//bandwidth in mega hertz
Cd=5;//Photodiode capacitance in pico  farad
T=291;//tEMPERATURE IN KELVIN
Ip=10^-7;//photo current in ampere
Rlm=(1/(2*%pi*B*10^6*Cd*10^-12));//Maximum lod resistance in  ohm
//Case 1 when M=1
SNR1=(Ip^2)/((2*e*B*10^6*Ip)+((4*K*T*B*10^6)/(Rlm)));
SNR1dB=10*(log10(SNR1));//signal to noise ration when M=1 in dB
//CASE2 M=Mop & x=0.3
x=0.3;
Mop=(((4*K*T)/(x*e*Rlm*Ip))^(1/2.3))
SNR2=(Mop^2*Ip^2)/((2*e*B*10^6*Ip*Mop^2.3)+((4*K*T*B*10^6)/(Rlm)));//signal to noise ratio M=Mop & x=0.3
SNR2dB=10*(log10(SNR2));//signal to noise ratio M=Mop & x=0.3 in dB
disp(SNR1dB,"signal to noise ration when M=1 in dB")
disp(SNR2dB,"signal to noise ratio M=Mop & x=0.3 in dB")
