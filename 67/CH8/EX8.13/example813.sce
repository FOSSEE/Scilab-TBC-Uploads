//Example 8.13
//Find the DFT of the following sequence
clc;
h=[1/3,1/3,1/3];
H=fft(h,-1);
disp(H,'H[k]=');