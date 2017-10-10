//Caption:Determine (a)upper cutoff frequency (b)lower cutoff frequency
//Ex:1.8
clc;
clear;
close;
f=1//frequency of square wave(in khz)
tr=200//rise time of output(in ns)
t=0.03//fractional tilt
fh=0.35*10^3/tr
disp(fh,'(a)upper cutoff frequency(in mhz)=') 
fl=f*t*1000/%pi
disp(fl,'(b)Lower cutoff frequency(in hz)=')