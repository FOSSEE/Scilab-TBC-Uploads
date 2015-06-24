//Example 5.11
clc;clear;close;
format('v',8);
GA=5000;//MW
GB=10000;//MW
R=2;//Hz/p.u.MW////Speed regulation constant
D=0.01;//p.u.MW/Hz
Ls=100;//MW//Load increase
RA=R*GB/GA;//Hz/p.u.MW
DA=D*GA/GB;//p.u.MW/Hz
RB=R;//Hz/p.u.MW
DB=D;//p.u.MW/Hz
Beta_A=DA+1/RA;//p.u.MW/Hz
Beta_B=DB+1/RB;//p.u.MW/Hz
MA=0;//Load increase
MB=Ls/GB;//p.u.MW
delf0=-MB/(Beta_A+Beta_B);//Hz
disp(delf0,"Static frequency drop(Hz)");
format('v',6);
delPAB=Beta_A*MB/(Beta_A+Beta_B);//p.u.MW
delPAB=delPAB*GB;//MW
disp(delPAB,"Change in tie line power(MW)");
