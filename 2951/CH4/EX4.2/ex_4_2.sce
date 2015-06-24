clc;
clear;
a=3;//amplitude in volts
Dev_sen=4;// deviation sensitivity in KHz/volts
fm=1.5;// frequency modulating signal in KHz

f=Dev_sen*10^(3)*3;//peak frequency deviation
B=f/(fm*10^3);

disp(f,"Peak Frequency Deviation( in Hz) ");
disp(B,"modulation index ");
