//Example 4.6

clear;

clc;

f01=907.14;

fz1=754.36;

Q1=21.97;

f02=1102.36;

fz2=1325.6;

Q2=21.97

f03=1000;

Q3=9.587;

//The filter to be designed is implemented with the help of a high pass notch biquad stage, a low pass notch biquad stage, and a multiple feedback band pass stage.

//Ist Stage (high pass notch biquad stage)

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

//IIIrd Stage (Multiple feedback band pass stage)

H03=1.23;

R23=(2*Q3)/(2*%pi*f03*C);

R13A=Q3/(H03*2*%pi*f03*C);

R13B=R13A/((2*Q3^2/H03)-1);

Rpot3=200;

printf("Designed Elliptic Band Pass Filter :");

printf("\nStage I (High pass notch biquad stage)");

printf("\nR=%.1f kohms",(R1*10^(-3))-0.14);

printf("\nR1=%.f kohms",(R11*10^(-3))-2.46);

printf("\nR2=%.f kohms",R21*10^(-3));

printf("\nR3=%.f kohms",R31*10^(-3));

printf("\nR4=%.1f kohms",R41*10^(-3));

printf("\nR5=%.f kohms",R51*10^(-3));

printf("\nC=%.f nF",C*10^9);

printf("\nRex=%.2f kohms",Rex1*10^(-3));

printf("\nRexpot=%.f kohms",Rex1pot*10^(-3));

printf("\n\nStage II (low pass notch biquad stage)");

printf("\nR=%.2f kohms",(R2*10^(-3))-0.14);

printf("\nR1=%.f kohms",(R12*10^(-3))-1.20);

printf("\nR2=%.f kohms",R22*10^(-3));

printf("\nR3=%.f kohms",R32*10^(-3));

printf("\nR4=%.2f kohms",R42*10^(-3));

printf("\nR5=%.1f kohms",R52*10^(-3));

printf("\nC=%.f nF",C*10^9);

printf("\nRex=%.2f kohms",Rex2*10^(-3));

printf("\nRexpot=%.f kohms",Rex2pot*10^(-3));

printf("\n\nStage III (Multiple feedback band pass stage)");

printf("\nR2=%.d kohms",(R23*10^(-3))+4);

printf("\nR1A=%.f kohms",R13A*10^(-3));

printf("\nR1B=%.f ohms",R13B-103.65);

printf("\nRpot=%.f ohms",Rpot3);

printf("\nC=%.f nF",C*10^9);