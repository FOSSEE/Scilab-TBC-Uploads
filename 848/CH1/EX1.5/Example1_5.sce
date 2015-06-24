//clear//
//Caption:Capacity of a channel using shannon's formula
//Example1.5
//page 12
clear;
clc;
close;
fLow = 3*(10^6); //low frequency = 3MHz
fHigh = 4*(10^6); //hihg frequency = 4MHz
S_N_dB = 20; //signal-to-noise ratio 20 dB
S_N = 10^(S_N_dB/10);
B = fHigh - fLow;
C = B*log2(1+S_N);
disp(B,'Bandwidth in Hz B = ')
disp(C,'Capacity of a channel in bits/secs C =')
disp(S_N,'signal to noise ratio S/N = ')
//Result
// Bandwidth in Hz B =     1000000.  
// Capacity of a channel in bits/secs C =    6658211.5  
// signal to noise ratio S/N =     100.  
