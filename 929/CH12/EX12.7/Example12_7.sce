//Example 12.7

clear;

clc;

SNRmaxmindB=96;

SNRmaxminb=16;

n=1;

m1=((((SNRmaxmindB+3.41)/6.02)-n)/1.5);

m1app=m1-0.042193;//Approximation for m1

k1=2^m1app;

m2=((((SNRmaxmindB+11.14)/6.02)-n)/2.5)

k2=2^m2;

printf("k for first order Integrate Difference ADC  : k=%.f",k1);

printf("\nk for second order Integrate Difference ADC : k=%.d",k2);