//Example 8.8 Calculate the Gross Reproduction Rate  Reproduction Rate and Net
clc;
clear;
N=[0.22 0.40 0.38 0.30 0.20 0.07 0.02];
SR=[0.75 0.71 0.69 0.66 0.61 0.55 0.50];
GRR=sum(N);
NRR=sum(N.*SR);
disp(NRR,"Net Reproduction Rate =",GRR,"Gross Reproduction Rate",SR,"Survival Rate for New born Females upto Begining of Age interval",N,"No. of Female Children borne per Woman");

