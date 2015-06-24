//Example 5.3

clear;

clc;

T0=25;

IBT0=1*10^(-12);

T=100;

IBT=IBT0*2^((T-T0)/10);

printf("IB(100degC)=%.2f nA",IBT*10^9);