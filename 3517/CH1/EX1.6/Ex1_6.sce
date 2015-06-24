//Caption:Calculate a. Rise time in output waveform b. Minimum upper cut off frequency and displayed rise time
//Ex1.6
clc;
clear;
close;
tr=10//Rise time of input waveform(in micro sec)
fu=350//Upper cut off frequency(in KHz)
ti=100//Input rise time(in ns)
trc=0.35*(10^(-3))/350
tro=sqrt(((tr)*(10^(-6)))^2+(trc^2))*10^6
disp(tro,'(a)Rise Time(in Micro sec)=')
tc=ti*(10^(-9))/3
fh=0.35*10^(-6)/tc
Tro=sqrt((ti*(10^(-9)))^2+(tc^2))*10^9
disp(Tro,fh,'(b)Minimum upper cut off frequency(in Mhz) and rise time(in ns)=')
