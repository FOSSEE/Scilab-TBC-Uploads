//Example 12.3
//Program to estimate the average number of photons which must be 
//incident on the APD to register a binary one with a BER of 10^(-9) 

clear;
clc ;
close ;

//Given data
k=0.02;                //CARRIER IONIZATION RATE
M=100;                 //MULTIPLICATION FACTOR
SNR=144;               //SIGNAL TO NOISE RATIO
Bt=0.6;                //FOR RAISED COSINE PULSE SPECTRUM
n=0.8;                 //(*100) percent - QUANTUM EFFICIENCY

//Excess avalanche noise factor F(M)
F=k*M+(2-1/M)*(1-k);

//Average number of photons
z=2*Bt*ceil(F)/n*SNR;

//Displaying the Result in Command Window
printf("\n\n\t  The average number of photons which must be incident on the APD is %1.0f photons.",z);