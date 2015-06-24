//Example 4.2(a)

clear;

clc;

n=6;

fc=13*10^3;

//For a 1dB ripple Chebyshev low pass filter with n=6 requires 3 second order stages with :
//f01=0.995*fc, Q1=8
//f02=0.747*fc, Q2=2.20
//f03=0.353*fc, Q3=0.761

f03=0.995*fc;

Q1=0.761;

f02=0.747*fc;

Q2=2.20;

f01=0.353*fc;

Q3=8.00;

n1=(4*Q1^(2))+0.0016978;

C1=2.2*10^(-9);

C11=n1*C1;

C21=C1;

k1=(n1/(2*(Q1^(2))))-1;

m1=k1+(((k1^2)-1)^(0.5));

k11=(m1*n1)^(0.5);

R1=1/(k11*2*%pi*f01*C1);

R11=m1*R1;

R21=R1;

n2=(4*Q2^(2))+0.2478431;

C2=510*10^(-12);

C12=n2*C2;

C22=C2;

k2=(n2/(2*(Q2^(2))))-1;

m2=k2+(((k2^2)-1)^(0.5));

k12=(m2*n2)^(0.5);

R2=1/(k12*2*%pi*f02*C2);

R12=m2*R2;

R22=R2;

n3=(4*Q3^(2))+25.818182;

C3=220*10^(-12);

C13=n3*C3;

C23=C3;

k3=(n3/(2*(Q3^(2))))-1;

m3=k3+(((k3^2)-1)^(0.5));

k13=(m3*n3)^(0.5);

R3=1/(k13*2*%pi*f03*C3);

R13=m3*R3;

R23=R3;

printf("Designed Chebyshev Filter :");

printf("\nSection I :")

printf("\nR1=%.2f kohms",R11*10^(-3));

printf("\nR2=%.2f kohms",R21*10^(-3));

printf("\nC1=%.2f nF",C11*10^9);

printf("\nC2=%.2f nF",C21*10^9);

printf("\n\nSection II :")

printf("\nR1=%.2f kohms",R12*10^(-3));

printf("\nR2=%.2f kohms",R22*10^(-3));

printf("\nC1=%.2f nF",C12*10^9);

printf("\nC2=%.2f pF",C22*10^12);

printf("\n\nSection III :")

printf("\nR1=%.2f kohms",R13*10^(-3));

printf("\nR2=%.2f kohms",R23*10^(-3));

printf("\nC1=%.2f nF",C13*10^9);

printf("\nC2=%.2f pF",C23*10^12);