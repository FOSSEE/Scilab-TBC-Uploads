//Exa 2.7
clc;
clear;
close;
format('v',7);

//Given Data
SigmaW=30;//KJ
n=10;//cycles/min
Q1_2=50;//KJ
//Q2_3=0;//KJ
//Q3_1=0;//KJ
//W1_2=0;//KJ
W2_3=30;//KJ
//W3_1=0;//KJ
deltaU1_2=20;//KJ
deltaU2_3=-10;//KJ
//deltaU3_1=0;//KJ
//Q-W=deltaU
//For Proess 1-2 : 
W1_2=Q1_2-deltaU1_2;//KJ
disp(W1_2,"W1-2 in KJ : ");
//For Proess 2-3
Q2_3=W2_3+deltaU2_3;//KJ
disp(Q2_3,"Q2-3 in KJ :  ");
//For Proess 3-1
W3_1=SigmaW-W1_2-W2_3;//KJ
disp(W3_1,"W3-1 in KJ : ");
SigmaQ=SigmaW;//KJ
Q3_1=SigmaQ-Q1_2-Q2_3;//KJ
disp(Q3_1,"Q3-1 in KJ : ");
deltaU3_1=Q3_1-W3_1;//KJ
disp(deltaU3_1,"U1-U3 or deltaU3-1 in KJ : ");
RateOfWork=SigmaW*n;//KJ/min
RateOfWork=RateOfWork/60;//KJ/sec or KW
disp(RateOfWork,"Rate of work in KW : ");

