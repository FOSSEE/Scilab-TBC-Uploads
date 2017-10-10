// Exa 4.4
// TO calculate:
// A)The minimum number of bits/sample or bits/PCM word that should be used.
// B)The minimum sampling rate, and what is the resulting transmission rate.
// C)The PCM pulse or symbol transmission rate.

clc;
clear all;

Fm=3000; //highest modulating frequency in signal(Hz)
M=32; // number of pulse levels 
b=5; //bits per symbol 
p=0.01; //Quantization distortion

//solution
//2^R = L >= 1/2P
// where R is the number of bits required to represent quantization levels L
R=log10(1/(2*p))/log10(2);
Fs=2*Fm;  // Nyquist sampling criteria (samples per second)
fs=round(R)*Fs;
Rs=fs/b;
printf('The minimum number of bits/sample or bits/PCM word that should be used are %d',round(R));
printf('\n The minimum sampling rate is %d samples per second\n ',Fs);
printf('The resulting transmission rate is %d bps\n ',fs);
printf('The PCM pulse or symbol transmission rate is %d symbols/sec\n',Rs);
