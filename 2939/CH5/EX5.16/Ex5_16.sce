
// Ex5_16
clc;

// Given:
m=4*10^-3;// in gms
flux=1.3*10^14;
a=19.6*10^-24;// in cm^2
// Solution:
N=(m/59)*6.022*10^23;
A=N*flux*a*3600;// atoms
k=0.693/(5.25*3.16*10^7);// s^-1

A1=k*A;// Activity in dps

A2=(A1)/(3.7*10^10);// in Ci
A3=(A1*10^3)/(3.7*10^10);// in mCi
A4=A2*37*10^8;// in Bq

printf("\n The activity in mCi is = %f",A3)
printf("\n The activity in Bq is = %f",A4)
