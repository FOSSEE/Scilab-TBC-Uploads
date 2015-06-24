// Example 10.3;//incident optical power
clc;
clear;
close;
ht=6.62*10^-34;//plank constt.
f=3*10^14;//frequency in hertz
n=1;//efficiency for ideal case
SNR=50;//signal to noise ration in dB
h=1;//wavelength in micro meter
B=5;//bandwidth in mega hertz
SN=10^5;//Signal too noise ratio
Po=((2*ht*f*B*10^6*SN)/n)*10^9;//output power in nano watt
Podb=10*(log10(Po*10^-6));//output power in dB
disp(Podb,"output power in dB")
