//caption:Find frequency of the waveform
//Ex8.9
clc
clear
close
t=0.5//time base(in microecond/division)
d=2//divisions/cycle
T=t*d
F=1/T
disp(F,'frequency of the waveform(in MHz)=')