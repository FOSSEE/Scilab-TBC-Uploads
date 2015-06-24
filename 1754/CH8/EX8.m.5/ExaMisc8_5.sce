//Exa Misc 8.5
clc;
clear;
close;
//given data
format('v',6);
L=0.5;//in H
Cs=0.06;//in pF
Cp=1;//in pF
R=5;//in Kohm
fs=1/(2*%pi*sqrt(L*Cs*10^-12));//in Hz
Q=2*%pi*fs*L/(R*10^3);//Q-factor
disp(fs/10^3,"Seies resonance frequency(in KHz)")
disp(round(Q),"Q-factor f the crystal at fs is ");
fp=(1/(2*%pi))*sqrt((Cs*10^-12+Cp*10^-12)/(L*Cs*10^-12*Cp*10^-12));//in Hz
Q=2*%pi*fp*L/(R*10^3);//Q-factor
disp(fp/10^3,"Seies resonance frequency(in KHz)")
disp(round(Q),"Q-factor f the crystal at fs is ");
