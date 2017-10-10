//Caption:Determine upper and lower Frequencies
//Ex:1.9
clc;
clear;
close;
tr=30//Rise time(in micro sec)
PRF=2000//Pulse repetition Frequency(in pps)
t=0.082//Tilt(in %)
Pw=220//Pulse width(in micro sec)
fh=0.35*10^(6)/tr
fl=t*10^6/(2*%pi*Pw)
disp(fl,fh,'Upper and lower frequencies(in hz)=')