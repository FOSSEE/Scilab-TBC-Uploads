clc;
clear;
ft=100.2; //final carrier frequency in MHz
Freq_Dev_ft=60;// Frequency Deviation in KHz at power amplifier
fm=10;//modulating frequency in KHz
m=25;//multiplication factor

//a)
fc=ft/25;

//b)
Freq_Dev=Freq_Dev_ft/25;

//c)
B=Freq_Dev/fm;

//d)
Bt=B*m;

disp(fc,"a) MAster Oscillator Centre Frequency(in MHz) =");
disp(Freq_Dev, "b) Frequency Deviation at the output of modulator(in KHz)=");
disp(B,"c)Devaition ratio at the output of modulator");
disp(Bt,"d)deviation ratio at power amplifier");
