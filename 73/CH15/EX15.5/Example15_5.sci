//Chapter 15_Phase Locked Loops
//Caption : Lock Range
//Example15.5: A PLL has a VCO with Ko=25kHz/V and Fc=50kHz.The amplifier gain is A=2 and the phase detector has a maximum output voltage swing of +0.7V and -0.7V. Find the lock range of the PLL.Assume filter gain equal to unity.
//Solution:
clear;
clc;
k1=2*0.7/%pi;//positive maximum gain value of phase detector
k2=-k1;//negative maximum gain value of phase detector
A=2;// amplifier gain
Ko=25;// VCO gain in kHz
//positive maximum output voltage swing of phase detector is
V1=k1*%pi/2;
//Negative maximum output voltage swing of phase detector is
V2=k2*%pi/2;
Vf1=k1*A*%pi/2;//Positive maximum control voltage available to drive VCO
Vf2=k2*A*%pi/2;//negative maximum control voltage available to drive VCO
//maximum VCO frequency swing that can be obtained is
Fh=Ko*Vf1;//positive maximum VCO frequency swing
Fl=Ko*Vf2;// Negative maximum VCO frequency swing
// so lock range of PLL is
f=Fh-Fl;
disp('kHz',f,'The lock range of the PLL is:')