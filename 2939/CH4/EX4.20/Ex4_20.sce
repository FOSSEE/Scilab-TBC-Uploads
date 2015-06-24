
// Ex4_20
clc;

// Given:
t1=1.28*10^9;// in years
// Solution:
k=0.693/(1.28*10^9);
// beta deay is 88.8%
k1=0.888*k;
// EC decay is 11.2%
k2=0.112*k;
tbeta=(0.693*10^-9)/(k1);// partial half life for beta decay in Gy
tEC=(0.693*10^-9)/(k2);// partial half life for EC decay in Gy

printf("The partial half life for beta decay is %f Gy and partial half life for EC decay is %f Gy.",tbeta,tEC)
