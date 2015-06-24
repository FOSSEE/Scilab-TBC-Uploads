
// Ex5_11
clc;

// Given:
a=0.56*10^-24; // area
flux=10^13;
// Solution:
A=6.022*10^23*10^-3*2.5/(58.5);
k=A*flux*0.56*10^-24;
y=(0.5)^(4/5);
activity=k*(1-y);
printf("The activity is = %f dis s^-1 g^-1 NaCl",activity)
