clear;
clc;
B=3000; //B=band width
D=30; //D=ratio of signal power to noise power in db
P=10^(D/10); // P=converting D into a numerical ratio
A=fix(log2(1+P)*100)/100
C=B*A;
printf("Rate of transmission of information = %f bits/sec",C);
