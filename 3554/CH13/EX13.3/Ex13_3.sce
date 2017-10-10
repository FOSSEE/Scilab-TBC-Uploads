// Exa 13.3

clc;
clear all;

// Given data

K=2; // Gauge factor
strain=1*10^-6; // Ratio of change in length to original length
R=130; // Resistance in Ohms

// Solution

// As K = ratio of dell R/R to dell L/L
Dell_R =K*R*strain ; // Change in resistance
printf(' The change in resistance = %d micro Ohms \n',Dell_R*10^6);
