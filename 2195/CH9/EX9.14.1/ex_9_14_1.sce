//Example 9.14.1 // peak to peak voltage and rms voltage
clc;
clear;
close;
format('v',7)
vdv=1;//volts per division in V/div
n=6.8;//no. of divisions
Vpp=vdv*n;//peak to peak voltage in volts
vrms=Vpp/(2*sqrt(2));//rms voltage in volts
disp(Vpp,"peak to peak voltage in volts")
disp(vrms,"rms voltage in volts")
