clc;
clear all;
//chapter 3
//page no 90
//example 3.8
mprintf('(a) The RF burst frequency is 500 MHz\n');
mprintf(' (b) The pulse repetition rate is 1 MHz\n');
f0=10*10^6;    //Zero crossing frequency in Hz
tau=1/f0;     //in second
mprintf(' (c) The pulse width is %.1f micro second\n',tau*10^6);
