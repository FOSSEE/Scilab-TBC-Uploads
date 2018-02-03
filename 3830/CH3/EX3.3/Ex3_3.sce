// Exa 3.3

clc;
clear;

// Given

NF = 30; // Noise figure in dB
BW = 1; // Bandwidth of 3 dB filter in kHz

// Solution

printf(' The noise level of the spectrum analyser is related to the noise figure and the IF bandwidth by the following equation - \n  MDS = -114 dbm + 10*log(BW/1MHz) + NF \n  so, by calculation :- ');

MDS = -114 + 10*log10(BW*10^3/10^6)+NF;

printf(' MDS = %d  dBm \n ' , MDS);

// The answer provided in the textbook is wrong
