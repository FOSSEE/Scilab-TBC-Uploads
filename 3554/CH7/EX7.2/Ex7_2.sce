// Exa 7.2

clc;
clear all;

//Given data
// Refering waveform shown in fig 7.50 on page no. 211

div=4; // No of horizontal divisions for One cycle
// Given data
time_div= 2; // Time per div control in micro sec/div

// Solution

// The period of signal is given as T=(time/div) *(No of div/ cycle);
T=time_div *10^-6 * div/1 ; // Time period is calculated over 1 cycle
F= 1/T; // Frequency is inverse of time period

printf(' The frequency of signal = %d kHz \n',F/1000);
