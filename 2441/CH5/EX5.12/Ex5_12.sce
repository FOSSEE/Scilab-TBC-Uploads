//Example 5.12
clc;clear;close;
format('v',8);
GA=500;//MW
GB=2000;//MW
RA=2.5;//Hz/p.u.MW////Speed regulation constant
RB=2;//Hz/p.u.MW////Speed regulation constant
Ls=20;//MW//Load increase
f=50;//Hz
delL=1;//%////change in load
delf=1;//%////change in frequency
DA=delL/delf*GA/f;//MW/Hz
DA=DA/GB;//p.u.MW/Hz
DB=delL/delf*GB/f;//MW/Hz
DB=DB/GB;//p.u.MW/Hz
RA=RA*GB/GA;//Hz/p.u.MW
Beta_A=DA+1/RA;//p.u.MW/Hz
Beta_B=DB+1/RB;//p.u.MW/Hz
disp("Part(a)");
MA=Ls/GB;//unitless
MB=0;//unitless
delf0=-MA/(Beta_A+Beta_B);//Hz
disp(delf0,"Change in frequency(Hz)");
delPAB=-Beta_B*MA/(Beta_B+Beta_A);//p.u.MW
delPAB=delPAB*GB;//MW
disp(delPAB,"Change in tie line power(MW)");
disp("Part(b)");
MB=Ls/GB;//unitless
MA=0;//unitless
delf0=-MB/(Beta_A+Beta_B);//Hz
disp(delf0,"Change in frequency(Hz)");
delPAB=Beta_A*MB/(Beta_B+Beta_A);//p.u.MW
delPAB=delPAB*GB;//MW
disp(delPAB,"Change in tie line power(MW)");
