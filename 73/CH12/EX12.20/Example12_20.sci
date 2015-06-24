//Chapter 12_Signal Generators
//Caption : Waveform Generator
//Example12.20: Design a waveform generator using type 8038 IC.The frequency of Oscillation is 5 kHz and the duty cycles is 50%.From data sheet,typical values for the device at Vcc=5 V are as follws:
//Voh=3.6 V; Vol=0.2 V; Ill=-1.6 mA and Ilh=40 uA.
//Solution:
clear;
clc;
Fo=5*10^3;
//for 50% duty cycle Tp=Tn
Vcc=5;//in volt
Vol=0.2;//in Volt
Voh=3.6;//in volt
Ill=-1.6*10^-3;
Ilh=40*10^-6;
Tp=1/(2*Fo);
C=0.01;//assuming the Capacitor value in uF for optimum design
Ra=Tp/(1.66*C);
Rb=2*Ra*Tp/(1.66*Ra*C+Tp);
R2min=(Vcc-Vol)/(2*10^-3-abs(Ill));//since Ill is negative
R2max=(Vcc-Voh)/(1*10^-6+Ilh);//since Ilh is positive
disp('kilo Ohm',Ra*10^3,'designed value of Ra is:')
disp('kilo Ohm',Rb*10^3,'designed value of Rb is:')
disp('kilo Ohm',R2min/10^3,'minimum pull-up resistor is:')
disp('kilo Ohm',R2max/10^3,'maximum pull-up resistor is:')