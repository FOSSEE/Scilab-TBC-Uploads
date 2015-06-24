clc;
clear;
n=16;// Number of telephone lines
m=256;//Quantization levels
q=8;// since 2^(q)=256

fs=10;//Sampling frequency in kHz

Bw=[(16*9)+1]*10*10^(3);

disp(Bw,"Bandwidth (in Hz ) is");
