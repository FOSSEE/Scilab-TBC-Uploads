// Exa 15.2

clc;
clear all;

// Given data

Wc=20*10^3; // Angular cutoff frequency in rad/s
C=0.01*10^-6; //in  farads

// Solution

// As Wc=1/(R*C);
R=1/(Wc*C);

printf(' The value of resistance required = %d k Ohms \n',R/1000);
