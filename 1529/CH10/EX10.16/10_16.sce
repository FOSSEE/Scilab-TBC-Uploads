//Chapter 10, Problem 16
clc;
g1=12;              //gain of stage 1
g2=15;              //gain of stage 2
g3=-8;              //gain of stage 3
P=g1+g2+g3;         //Power ratio
P1=10^(P/10);       //calculating overall power gain
printf("Overall power gain (P2/P1) = %f ",P1);
