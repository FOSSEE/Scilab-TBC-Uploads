//Chapter 7_Operational Amplifier Characteristics
//Caption : Largest Amplitude
//Example7.16: An amplifier has a 10 kHz sinewave input signal. Find the largest amplitude that the output of the amplifier can be,without distortion owing to slew rate limiting. Given slew rate=0.5V/u sec.
//Solution:
clear;
clc;
Fmax=10*10^3;//frequency of sinewave input signal in Hz
SlewRate=0.5*10^6;//given in question in V/sec
Vm=SlewRate/(2*%pi*Fmax);//Since Fmax=slew rate/(2*%pi*Vm)
disp('V(peak)',Vm,'largest amplitude that the output of the amplifier can be without distortion owing to slew rate limitation is:')
//Note:
// calculated amplitude  is 7.9577 V, which can be approximated to 8 V