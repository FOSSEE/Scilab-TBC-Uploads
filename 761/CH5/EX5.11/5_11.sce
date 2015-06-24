clc;
//page no 207
//prob no. 5.11
//A PLL FM generator refering fig.5.25 with
f_ref=100*10^3;N=200;kf=50*10^3;//in Hz/V
//a)Determination of carrier freq of o/p signal
fc=N*f_ref;
disp('MHz',fc/10^6,'The carrier freq of o/p signal');
//b)Determination of RMS modulating voltage for 10kHz deviation
dev=10*10^3;
Vp=dev/kf;
//Converting peak voltage to RMS voltage
V_RMS=Vp/sqrt(2);
disp('mV',V_RMS*1000,'The RMS voltage for needed deviation is ');