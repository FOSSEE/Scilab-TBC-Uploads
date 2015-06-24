clc
clear
//Input data
Q=-170;//Sum of all heat transfers per cycle in kJ
N=100;//Total number of cycles per min in cycles/min
Q1=0;//Heat developed in a-b process in kJ/min
Q2=21000;//Heat developed in b-c process in kJ/min
Q3=-2100;//Heat developed in c-d process in kJ/min
W1=2170;//Work done in the process a-b in kJ/min
W2=0;//Work done in the b-c process in kJ/min
E3=-36600;//Change in energy in the process in kJ/min

//Calculations
E1=Q1-W1;//Change in energy in process a-b in kJ/min
E2=Q2-W2;//Change in energy in b-c process in kJ/min
W3=Q3-E3;//Work done in the c-d process in kJ/min
Qt=Q*N;//Total heat transfer per min in kJ/min 
Q4=Qt-Q1-Q2-Q3;//Heat developed in the process d-a in kJ/min
Et=0;//Total change in energy of the cycle
E4=Et-E1-E2-E3;//Energy in the process d-a in kJ/min
W4=Q4-E4;//Work done in the d-a process in kJ/min 
Wn=Qt/60;//Net rate of work output in kW

//Output
printf('(a)Change in energy in a-b process E = %3.0f kJ/min \n (b)Change in energy in b-c process E = %3.0f kJ/min \n (c)Work done in the c-d process W = %3.0f kJ/min \n (d)Heat developed in the process d-a Q = %3.0f kJ/min \n (e)Energy in the process d-a E = %3.0f kJ/min \n (f)Work done in the d-a process W =%3.0f kJ/min \n (g)Net rate of work output W = %3.2f kW ',E1,E2,W3,Q4,E4,W4,Wn)
