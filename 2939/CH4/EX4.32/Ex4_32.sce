
//Ex4_32
clc;

// Given:
tU=4.47*10^9;// y
tRa=1600;// y
tRn=3.82;// days
nU=1;
// Solution:
//under secular equilibrium we have
nRa=(tRa*365/tRn)*nU;
nRn=(tU*365/tRn)*nU;
printf("The proportion of U,Ra,Rn is 1: %f: %f .",nRa,nRn)
