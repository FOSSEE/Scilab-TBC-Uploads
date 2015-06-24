//Example 1.12(a)

clear;

clc;

rd=1*10^6;//Internal Input Resistance

a=10^4;//Open Loop Gain

ro=100;//Internal Output Resistance

R1=10*10^3;//shown in Fig. 1.34a

R2=20*10^3;//shown in Fig. 1.34a

R3=30*10^3;//shown in Fig. 1.34a

R4=300*10^3;//Feedback Resistance (shown in Fig. 1.34a)

RL=2*10^3;//Load Resistance

RArec=((1/R1)+(1/R2)+(1/R3)+(1/rd))//Reciprocal of RA(parallel combination of R1, R2, R3 and rd)

RA=1/RArec;

RB=RA+R4;

RC=(RB*RL)/(RB+RL);

RD=RC+ro;

c1=(RA/RB);//vN=c1*vo

c2=(RC/RD);//vo=c2*vT

b=c1*c2;//Feedback Factor b=vN/vT=c1*c2

T=a*b;//Loop Gain

printf("b=%.3f V/V",b);

printf("\nT=%.2f",T);