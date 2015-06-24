//clear//
//Caption:Slow and Fast Frequency hopping: FH/MFSK
//Example9.4 and Example9.5: Parameters of FH/MFSK signal
//Slow and Fast Frequency Hopping
clear;
close;
clc;
K =2; //number of bits per symbol
M = 2^K; //Number of MFSK tones
N = 2^M-1;//Period of the PN sequence
k = 3; //length of PN sequence per hop
disp(K,'number of bits per symbol K =')
disp(M,'Number of MFSK tones M=')
disp(N,'Period of the PN sequence N =')
disp(k,'length of PN sequence per hop k =')
disp(2^k,'Total number of frequency hops =')
//Result
//number of bits per symbol K = 2.  
//Number of MFSK tones M = 4.  
//Period of the PN sequence N = 15.  
//length of PN sequence per hop k = 3.  
//Total number of frequency hops =  8.  
