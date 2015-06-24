//Example 5.3
clc;clear;close;
format('v',7);
P1=500;//MW
P2=200;//MW
f=50;//Hz
delP=140;//MW(System load increase)
f_new=49.5;//Hz(Frequency after drop)
delP1=delP*P1/(P1+P2);//MW
delP2=delP*P2/(P1+P2);//MW
f_dev=f_new-f;//Hz
//For delPdash=0, R1 &R2 can be calculated as :
R1=-1/delP1*f_dev;//Hz/MW
R2=-1/delP2*f_dev;//Hz/MW
disp(R2,R1,"Value of R for unit 1 & 2(Hz/MW)");
