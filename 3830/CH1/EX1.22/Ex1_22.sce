// Exa 1.22

clc;
clear;

// Given

// A sine wave AC input 

// Solution

printf('For a square wave, the form factor is 1.0, that is, the average and rms value are same \n');
printf(' For a sine wave, the form factor is 1.1, that is, the rms is 1.11 times the average \n');
printf(' Since the meter is calibrated for a sine wave, for a 1.0 V rms value of square wave, it indicates 1.11 V \n');
FFsq = 1.0;
FFsi = 1.11;
Perror = 100*(FFsi-FFsq)/FFsq;
printf(' The percentage error in the meter indication = %d percent \n',Perror);
