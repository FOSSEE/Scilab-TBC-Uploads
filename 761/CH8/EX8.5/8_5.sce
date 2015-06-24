clc;
// page no 326
// prob no 8.5
//Refering the fig.8.15 channel 12 has lowest carrierr freq 64 kHz
F=64;
c_total=12;
//Carrier freq goes up 4kHz per channel
f_up=4;
//Determination of carrier freq for channel 5
c=5;
fc=F+(f_up*(c_total-c));
disp('kHz',fc,'The value of carrier freq for channel 5 is');