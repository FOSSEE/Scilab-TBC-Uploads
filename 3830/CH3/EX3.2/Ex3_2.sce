// Exa 3.2

clc;
clear;

// Given

Noise = -90; // Minimum detectable signal (dbm)
Ip = 300 ; // power level of third-order product(dbm)

// Solution

printf(' The expression for the dynamic range of the spectrum analyser = 2/3*(Ip-MDS) \n  So, by calculations :-\n');
 
DR = 2/3*(Ip-Noise);
printf('  Dynamic range %.1f dB \n',DR);

// The answer provided in the textbook is wrong
