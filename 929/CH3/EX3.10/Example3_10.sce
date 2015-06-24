//Example 3.10

clear;

clc;

C=1*10^(-9);

Q=2;

n=(4*Q^(2))+4;

C1=n*C;

C2=C;

f0=10*10^(3);

k=(n/(2*(Q^(2))))-1;

m=k+((k^2-1)^(0.5));

k1=(m*n)^(0.5);

R=1/(k1*2*%pi*f0*C);

R2=R;

R1=m*R;

printf("Designed Unity Gain Low Pass Filter :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nC1=%.f nF",C1*10^9);

printf("\nC2=%.f nF",C2*10^9);