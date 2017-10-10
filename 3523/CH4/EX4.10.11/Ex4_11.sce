//Example 11// Ch 4
clc;
clear;
close;
// given data
d = 0.05; //electron current of an avalanche in uniform field gap of d in meters
t = 0.2*10^-6; //current decline abruptly in t sec
tc = 35*10^-9; //time constant
ve = d/t;//electron drift velocity in m/s
alpha = 1/(tc*ve);//townsend's ionization coefficient
printf("electron drift velocity %e m/s",ve)
printf("ionization coefficient %f m^-1",alpha)
