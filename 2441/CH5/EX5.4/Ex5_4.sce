//Example 5.4
clc;clear;close;
format('v',8);
f=50;//Hz
R=2;//Hz/pu MW
Pr=10000;//MW(Rated Capacity)
P=Pr/2;//MW(Operating Power)
delP=2;//%(Load Increase)
del_f=f*1/100;//Hz(1% change in frequency)
del_PL=P*1/100;//MW(1% change in load)
//Rate of change of load with frequency :
D=del_PL/del_f;//MW/Hz
D=D/Pr;//p.u. MW/Hz
//Frequency response characteristic : 
Beta=D+1/R;//p.u. MW/Hz
M=delP/100*P;//MW
M=M/Pr;//p.u. MW
del_fo=-M/Beta;//Hz
disp(del_fo,"Static frequency drop(Hz)")
R=%inf;
Beta=D+1/R;//p.u. MW/Hz
del_fo=-M/Beta;//Hz
disp(del_fo,"If speed governer loop is open, frequency drop(Hz)")
