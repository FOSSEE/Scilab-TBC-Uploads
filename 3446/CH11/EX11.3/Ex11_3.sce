// Exa 11.3
// To find the minimum number of PN chips.

clc;
clear all;

BW=100; //in MHz
Fspac=10;  //frequency spacing in kHz

//solution
FreqTones=BW*10^3/Fspac;
Chips=log2(FreqTones);
printf('Minimum number of chips required are %d chips \n ',Chips);
