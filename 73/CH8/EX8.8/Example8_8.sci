//Chapter 8_Applications of Operational Amplifier
//Caption : Vp and Vo
//Example8.8: In the circuit of non-inverting summing Op-Amp, V1=+2V, V2=-4V, V3=+5V. input resistors for all the three input signal are same and are equal to 1 kilo Ohm.The feedback resistor Rf is 2 kilo ohm. Determine the voltage Vp at the noninverting pin of the Op-Amp and the output Vo. Assume ideal Op=Amp.
//Solution:
clear;
clc;
Rf=2*10^3;//feedback resistor
R1=1*10^3;
R2=R1;
R3=R2;
V1=2;
V2=-4;
V3=5;
n=3;//no of inputs
Vp=(Rf/R1*V1+Rf/R2*V2+Rf/R3*V3)/n;
Vo=(1+Rf/R1)*Vp;
disp('V',Vp,'voltage at noninverting pin is:')
disp('V',Vo,'output voltage voltage of noninverting summing Op-Amp is:')