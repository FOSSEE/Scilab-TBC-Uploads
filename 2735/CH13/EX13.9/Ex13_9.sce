clc
clear
//Initialization of variables
T1=550 //R
T2=2660 //R
ts1=0.207
ts2=0.833
cp=0.24
//calculations
Ts=T1/ts1
Ts0=T2/ts2
disp("From table B-20")
tr1=0.529
tr2=0.174
dq=cp*Ts0*(tr1-tr2)
//results
printf("Heat required = %d Btu/lbm",dq)
