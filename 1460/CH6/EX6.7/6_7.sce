clc
//Initialization of variables
T1=400+460 //R
P1=100 //lb/in^2
P2=20 //lb/in^2
T2=140+460 //R
Cp=50
//calculations
Pratio=P1/P2
Tratio=T1/T2
C=log(Tratio) /log(Pratio)
n=1/(1-C)
v1=Cp*T1/(144*P1)
v2=Cp*T2/(144*P2)
w=144*P1*v1^n
function[p]=fun(v)
	p=w/v^n
endfunction
Work=intg(v1,v2,fun)
//results
printf("Work done = %.d ft-lb/lbm",Work)
//The answers in the textbook varies a bit due to rounding off errors
