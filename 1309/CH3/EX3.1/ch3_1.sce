clc;
clear;
printf("\t\t\tChapter3_example1\n\n\n");
// Determination of the heat-flow rate from one tube 
// specifications of 1 standard type K from table F2
OD=0.02858; // outer diameter in m
// from figure 3.11
M=8; // total number of heat-flow lanes
N=6; // number of squares per lane
S_L=M/N; // conduction shape factor
printf("\nThe Conduction shape factor is %.3f",S_L);
k=0.128; // thermal conductivity in W/(m.K) for concrete from appendix table B3
T1=85; // temperature of tube surface
T2=0; // temperature of ground beneath the slab
q_half=k*S_L*(T1-T2);
printf("\nThe heat flow per unit length from one half of one tube is %.1f W/m",q_half);
q=2*q_half;
printf("\nThe total heat flow per tube is %.1f W/m",q);
