//Example 1.11(b)

clear;

clc;

R1=1*10^6;

R2=1*10^6;

R3=100*10^3;

R4=1*10^3;

RL=2*10^3;//Load ResistanceR1=1*10^6;

R2=1*10^6;

R3=100*10^3;

R4=1*10^3;

RL=2*10^3;//Load Resistance

A=-(R2/R1)*(1+(R3/R2)+(R3/R4));//Ideal Gain

rd=1*10^6;//Internal input resistance

a=10^5;//Open Loop Gain

ro=100;

RA=(R1*rd)/(R1+rd);

RB=RA+R2;

RC=(RB*R4)/(RB+R4);

RD=RC+R3;

RE=(RD*RL)/(RD+RL);

RF=RE+ro;

c1=-(RA/RB);//vD=c1*v1

c2=(RC/RD);//v1=c2*vo

c3=(RE/RF);//vo=c3*vT

c4=a*(c1*c2*c3);//vR=a*vD=a*(c1*v1)=a*(c1*c2*vo)=a*(c1*c2*c3)vT=c4*vT -> vR=c4*vT

T=-c4;//T=(-vR/vT)=-c4 (Loop Gain)

Trec=1/T;

Atemp=1+Trec;

Aactual=A/Atemp;//Actual Gain

Adev=((Aactual-A)/A)*100;//Deviation in Gain

printf("Actual Gain of op amp=%.1f V/V",Aactual);

printf("\nPercentage Departure of Actual Gain from Ideal gain=%.2f",Adev);