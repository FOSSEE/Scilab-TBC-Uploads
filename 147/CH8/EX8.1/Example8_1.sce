close();
clear;
clc;
//initial temperature 'T1', final temperature 'T2', leakage current doubles for 't' increase in temperature
T1 = 25; //degree C
T2 = 90; //degree C
t = 6; //degree C
Icbo1 = 500*10^(-9); //A
Icbo2 = Icbo1*2^((T2-T1)/t); //A
mprintf("Leakage current at %d degree C, Icbo2 = %0.2f uA",T2,Icbo2*10^6)