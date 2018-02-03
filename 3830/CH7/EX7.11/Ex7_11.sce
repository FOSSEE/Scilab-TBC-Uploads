// Exa 7.11

clc;
clear;

// Given

// A thermistor
R1 = 120; // resistance in ohms at 25 °c
T1 = 25; // temperature in °c
T2 = 40; // temperature in °c
Alpha_T = -0.05; // temperature coefficient of resistance over range 25-50°c

// Solution

R2 = R1*(1+Alpha_T*(T2-T1)); // resistance at 175 °c
printf(' The resistance of thermistor at 40 °c = %d ohms \n',R2);
