clc;
clear;
Vm=3;// amplitude of message signal in V
Vc=5;//amplitude of carrier signal in V
m=Vm/Vc; //modulation index
disp("modulation index");
disp(m,"=");
disp("Upper Sideband Frequency(in MHz)");
Fm=4;//Frequency in KHz
Fc=5;//Frequency in MHz
disp(Fc+(Fm*10^(-3)),"=");
disp("Lower Sideband Frequency(in MHz)");
disp(Fc-(Fm*10^(-3)),"=");
disp("AMplitude of each Sideband(in V)");
disp(m*Vc/2,"=");
