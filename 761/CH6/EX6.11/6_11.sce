clc;
//page no 265
//prob no. 6.11
//An S-meter is given
V1=50*10^-6;//signal strength at transmitter in V
P=18;//18 dB power
V2=V1/(10^(P/20));
disp('uV',V2*10^6,'Signal strength at receiver i/p is'); 