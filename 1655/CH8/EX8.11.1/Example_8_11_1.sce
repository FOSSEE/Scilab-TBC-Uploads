// Example 8.11.1  page 8.26

clc;
clear;

P=1d-9;     //probability of error
eta=1;
N= -log(P);
N1=round(N);
printf("Thus %.1f or %d photons are required for maintaining 10^-9 BER.\nAssuming eta=1;\nE=%.1f*hv.",N,N1,N);
