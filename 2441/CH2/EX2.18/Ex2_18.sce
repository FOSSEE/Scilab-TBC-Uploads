//exa 2.18
clc;clear;close;
format('v',6);
Bmn=[0.0676 0.00953 -0.00507
0.00953 0.0521 0.00901
-0.00507 0.00901 0.0294];//Loss Coefficient
Bno=[-0.0766;0.00342;0.0189];//Loss Coefficient
Boo=0.04357;//Loss Coefficient
P1=107.9;//MW
P2=50;//MW
P3=60;//MW
//solution : 
PL=[P1 P2 P3]*Bmn+[P1 P2 P3]*Bno+Boo;//MW
PL=sum(-PL);//MW
disp(PL,"Transmission Loss(MW)");
//Note : Values calculated in the book are slightly wrong because of accuracy in calculation as compared to scilab accuracy.
