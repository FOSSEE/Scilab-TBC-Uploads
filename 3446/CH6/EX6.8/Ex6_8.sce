// Exa 6.8
// To calculate the minimum number of PN chips that are required for each frequency word.

clc;
clear all;

Bss=600;  //Hopping bandwidth in MHz
stepsize=400; // in Hz

//solution
No_of_Tones=Bss*10^6/stepsize;
Min_chips_required=log2(No_of_Tones);
printf('Minimum number of chips required are %d chips \n ',Min_chips_required);
