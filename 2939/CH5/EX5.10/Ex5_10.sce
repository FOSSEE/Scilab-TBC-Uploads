
// Ex5_10
clc;

// Given:
A1=3836;//in barns
E1=1;// in eV
E2=10^6// in eV

// Solution:
vr=sqrt(E2/E1);
A2=A1/vr;
printf("The cs area required will be = %f b", A2)
