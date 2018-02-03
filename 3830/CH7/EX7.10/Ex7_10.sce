// Exa 7.10

clc;
clear;

// Given

// A copper resistance thermometer

R1 = 15; // resistance in ohms at 20 °c
T1 = 20; // temperature in °c
T2 = 175; // max temperature in °c
Alpha_T = 0.00425; // temperature coefficient of resistance at 25°c

// Solution

R2 = R1*(1+Alpha_T*(T2-T1)); // resistance at 175 °c
printf(' The limiting value of resistance  = %.2f ohms \n',R2);
