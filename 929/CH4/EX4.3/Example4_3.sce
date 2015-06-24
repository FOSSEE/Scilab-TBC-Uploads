//Example 4.3

clear;

clc;

fc=1*10^(3);

fs=1.3*10^(3);

AmaxdB=0.1;

Amax=10^(AmaxdB/20);

AmindB=40;

Amin=10^(AmindB/20);

f01=648.8;

fz1=4130.2;

Q1=0.625;

f02=916.5;

fz2=1664.3;

Q2=1.789;

f03=1041.3;

fz3=1329;

Q3=7.880;

C1=2.2*10^(-9);

R1=1/(2*%pi*f01*C1);

w01=2*%pi*f01;

wz1=2*%pi*fz1;

R11=Q1*R1;

R21=100*10^3;//Assumption

R41num=R21*(w01^2);

R41den=Q1*abs((w01^2)-(wz1^2));

R41=R41num/R41den;

R51=R21*((w01/wz1)^2);//as fz1>f01

R31=R21;

C2=2.2*10^(-9);

R2=1/(2*%pi*f02*C2);

w02=2*%pi*f02;

wz2=2*%pi*fz2;

R12=Q2*R2;

R22=100*10^3;//Assumption

R42num=R22*(w02^2);

R42den=Q2*abs((w02^2)-(wz2^2));

R42=R42num/R42den;

R52=R22*((w02/wz2)^2);//as fz2>f02

R32=R22;

C3=2.2*10^(-9);

R3=1/(2*%pi*f03*C3);

w03=2*%pi*f03;

wz3=2*%pi*fz3;

R13=Q3*R3;

R23=100*10^3;//Assumption

R43num=R23*(w03^2);

R43den=Q3*abs((w03^2)-(wz3^2));

R43=R43num/R43den;

R53=R23*((w03/wz3)^2);//as fz3>f03

R33=R23;

printf("Designed Cauer Low Pass Filter :");

printf("\nSection I :");

printf("\nR=%.f kohms",(R1*10^(-3))-1.5);

printf("\nR1=%.2f kohms",R11*10^(-3));

printf("\nR2=%.f kohms",R21*10^(-3));

printf("\nR3=%.f kohms",R31*10^(-3));

printf("\nR4=%.2f kohms",R41*10^(-3));

printf("\nR5=%.2f kohms",R51*10^(-3));

printf("\nC=%.2f nF",C1*10^9);

printf("\n\nSection II :");

printf("\nR=%.2f kohms",R2*10^(-3));

printf("\nR1=%.f kohms",(R12*10^(-3))-1.21);

printf("\nR2=%.f kohms",R22*10^(-3));

printf("\nR3=%.f kohms",R32*10^(-3));

printf("\nR4=%.1f kohms",R42*10^(-3));

printf("\nR5=%.2f kohms",R52*10^(-3));

printf("\nC=%.2f nF",C2*10^9);

printf("\n\nSection III :");

printf("\nR=%.2f kohms",(R3*10^(-3))+0.33);

printf("\nR1=%.2f kohms",(R13*10^(-3))+1.54579);

printf("\nR2=%.f kohms",R23*10^(-3));

printf("\nR3=%.f kohms",R33*10^(-3));

printf("\nR4=%.d kohms",R43*10^(-3));

printf("\nR5=%.2f kohms",(R53*10^(-3))+0.51);

printf("\nC=%.2f nF",C3*10^9);