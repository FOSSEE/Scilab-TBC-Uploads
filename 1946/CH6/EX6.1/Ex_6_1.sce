// Example 6.1;//Ratio of stimulated emision to spontaneous emission
clc;
clear;
close;
hw=0.5;//wavelength in micro meetr
h=6.626*10^-34;//
T=1000;// temeperature in kelvin
C=3*10^8;// speed of light in m/s
f=C/(hw*10^-6);//frequency in hertz
K=1.38*10^-23;//bOltzman constt.
x=(h*f)/(K*T);
Rtp= 1/(exp(x)-1);
disp(Rtp,"Ratio of stimulated emisssion rate to spontaneous rate is")
