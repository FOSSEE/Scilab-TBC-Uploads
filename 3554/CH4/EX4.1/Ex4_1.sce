// Exa 4.1

clc;
clear all;

// Given data

Iful = 200; // Fullscale deflection current in micro Amperes
Sen= 1/(Iful*10^-3) ; // Sensitivity of Voltmeter(K Ohms/V)

// Solution

printf(' The sensitivity of the voltmeter = %d k Ohms/V \n',Sen);
