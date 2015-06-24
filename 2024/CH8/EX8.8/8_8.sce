clc
//Initialization of variables
R=1545 
n=1.3
T1=520 //R
p2=125 //psia
p1=14.7 //psia
M=29
cv=0.171
k=1.4
//calculations
Wrev= R*T1/M/(1-n) *((p2/p1)^((n-1)/n) -1)
T2= T1*(p2/p1)^((n-1)/n)
Qrev= cv*((k-n)/(1-n))*(T2-T1)
//results
printf("Work done = %d ft lbf/lbm",Wrev)
printf("\n Heat transferred = %.1f Btu/lbm",Qrev)
