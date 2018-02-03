// Exa 1.27

clc;
clear;

// Given

// A moving coil Ammeter
FSR = 10; // Full scale reading in Amp
No_of_div = 100;

// Solution

one_scale_div = FSR/No_of_div ; // in Amp
Resolution = 1/2 * one_scale_div ; // Since, the instrument can read upto half of the full-scale division(Amp)
printf('Resolution = %d mA \n', Resolution*1000);
