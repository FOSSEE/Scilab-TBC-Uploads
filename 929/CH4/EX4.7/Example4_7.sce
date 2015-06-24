//Example 4.7

clear;

clc;

f01=3460.05;

fz1=3600;

Q1=31.4;

f02=3745;

fz2=3600;

Q2=31.4;

f03=3600;

fz3=3600;

Q3=8.72;

//The answer of the Example 4.7 is not given in the textbook

//The filter is designed using three biquad sections, namely, a high pass notch, followed by a low pass notch, followed by a symmetric notch.

//Ist(High pass notch Biquad section)

C=10*10^(-9);

w01=2*%pi*f01;

wz1=2*%pi*fz1;

R1=1/(2*%pi*f01*C);

R11=Q1*R1;

R21=100*10^3;

R31=100*10^3;

R41num=R21*(w01^2);

R41den=Q1*abs((w01^2)-(wz1^2));

R41=R41num/R41den;

R51=R21;//as fz1<f01

Rex1=14.7*10^3;

Rex1pot=5*10^3;

//IInd Stage (low pass notch biquad stage)

w02=2*%pi*f02;

wz2=2*%pi*fz2;

R2=1/(2*%pi*f02*C);

R12=Q1*R2;

R22=100*10^3;

R32=100*10^3;

R42num=R22*(w02^2);

R42den=Q2*abs((w02^2)-(wz2^2));

R42=R42num/R42den;

R52=R22*((w02/wz2)^2);//as fz2>f02

Rex2=11.8*10^3;

Rex2pot=5*10^3;

//IIIrd Stage (Symmetric Notch Section)

L13=0.84304;

C13=0.62201;

CC130=C13/(2*%pi*f03);

CL130=L13/(2*%pi*f03);

C03=10*10^(-6);//Assumption

CC13=CC130*C03;

CL13=CL130*C03;

printf("Designed Chebyshev Band Reject Filter :");

printf("\nStage I(High pass notch Biquad section)");

printf("\nR=%.2f kohms",R1*10^(-3));

printf("\nR1=%.2f kohms",R11*10^(-3));

printf("\nR2=%.2f kohms",R21*10^(-3));

printf("\nR3=%.2f kohms",R31*10^(-3));

printf("\nR4=%.2f kohms",R41*10^(-3));

printf("\nR5=%.2f kohms",R51*10^(-3));

printf("\nC=%.2f nF",C*10^9);

printf("\n\nStage II(Low pass notch Biquad section)");

printf("\nR=%.2f kohms",R2*10^(-3));

printf("\nR1=%.2f kohms",R12*10^(-3));

printf("\nR2=%.2f kohms",R22*10^(-3));

printf("\nR3=%.2f kohms",R32*10^(-3));

printf("\nR4=%.2f kohms",R42*10^(-3));

printf("\nR5=%.2f kohms",R52*10^(-3));

printf("\nC=%.2f nF",C*10^9);

printf("\n\nStage III(Symmetric Notch Section)");

printf("\nC0=%.2f uF",C03*10^(6));

printf("\nCC1=%.2f pF",CC13*10^(12));

printf("\nCL1=%.2f pF",CL13*10^(12));