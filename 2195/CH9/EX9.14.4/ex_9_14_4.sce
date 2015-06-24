//Example 9.14.4 // peak to peak voltage and frequency
clc;
clear;
close;
format('v',7)
vdv1=0.5;//volts per division in V/div
nv=3;//no. of divisions
nh=4;//numbers of horizontal divisions
Vpp=vdv1*nv;//peak to peak voltage in volts
vdv2=2;// time division in micro seconds per divisions
Tp=vdv2*nh;// period in micro seconds
f=1/(Tp*10^-3);//frequency in kHz
disp(Vpp,"peak to peak voltage in volts")
disp(Tp,"period in micro seconds")
disp(f,"frequency in kHz")


