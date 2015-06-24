// 4.5
clc;
wc=6*10^8;
fc=(wc)/(2*%pi)*10^-3;
printf("\ncarrier frequency =%.1f kHz",fc)
ws=1250;
fs=(ws)/(2*%pi);
printf("\nmodulating frequency =%.1f Hz",fs)
mf=5;
delta=mf*fs;
printf("\nmaximum deviation =%.1f Hz",delta)
Rms=12/(2^0.5);
P=Rms^2/10;
printf("\nPower dissipated =%.1f W",P)

