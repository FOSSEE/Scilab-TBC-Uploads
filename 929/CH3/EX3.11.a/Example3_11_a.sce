//Example 3.11(a)

clear;

clc;

m=1;//Q is maximised at m=1

n=2;//Order of filter

f0=10*10^(3);

Qnum=(m*n)^(1/2);

Qden=m+1;

Q=Qnum/Qden;

C=1*10^(-9);//Assuming C=1 nF

C2=C;

C1=n*C;

R=1/(Qnum*C*2*%pi*f0);

R2=R;

R1=m*R;

printf("Designed Second Order Low Pass Butterworth Filter :")

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nC1=%.f nF",C1*10^9);

printf("\nC2=%.f nF",C2*10^9);