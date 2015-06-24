//Example 5.5
clc;clear;close;
format('v',7);
C=10000;//MW(Control area capacity)
P=5000;//MW
H=5;//s
R=3;//Hz/pu MW
f=50;//Hz
del_f=f*1/100;//Hz
del_PL=P*1/100;//MW
D=del_PL/del_f;//MW/Hz
D=D/C;//p.u. MW/Hz
//Primary ALFC loop parameters :
Kp=1/D;//Hz/p.u. MW
Tp=2*H/f/D;//s
disp("Primary ALFC loop parameters :")
disp(Kp,"Kp(Hz/p.u. MW)");
disp(Tp,"Tp(seconds)");
