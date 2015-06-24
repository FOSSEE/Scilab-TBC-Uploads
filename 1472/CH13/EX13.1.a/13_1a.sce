clc
//initialization of varaibles
P1=100 //psia
T1=500+460 //R
v=10 //cu ft
P2=50 //psia
cv=0.172
R=53.34
m=2.81 //lb
//calculations
T2=T1*P2/P1
Q1=P1*144*v*cv*(T2-T1)/(R*T1)
u1=165.26
u2=81.77
du=u2-u1
Q2=m*du
//results
printf("Case 1,")
printf("\n Final temperature of the steam = %d R",T2)
printf("\n Heat transferred = %d Btu",Q1+1)
printf("\n Heat transferred in case 2 = %d Btu",Q2-1)
