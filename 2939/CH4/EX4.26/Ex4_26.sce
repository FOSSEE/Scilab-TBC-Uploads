
// Ex4_26
clc;

// Given:
t238=4.5*10^9;// in y
t235=7.04*10^8;// in y
a0=0.72;// atoms per cent
t=7.04*10^8;
// Solution:

k1=0.693/(t238);//decay constant for U 238
N1=(100-a0)*exp(k1*t);

k2=0.693/(t235);//decay constant for U 235
N2=(a0)*exp(k2*t);

proportion=N2/N1;
printf("The proportion of U235 704 million years back is %f" ,proportion)




