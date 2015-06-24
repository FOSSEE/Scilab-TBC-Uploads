clc
//Initialization of variables
T1=420 //R
T11=530 //R
T3=2460 //R
V1=300 //ft/sec
P1=5 //psia
P5=P1
P2=50 //psia
P3=5 //psia
P4=50 //psia
g=1.4
cp=0.24
m=1
//calculations
T2=T1*(P2/P1)^((g-1)/g)
T4=T3-T2+T11
T5=T3*(P3/P4)^((g-1)/g)
V5=sqrt(2*32.2*cp*(T4-T5)*778)
T=m*(V1-V5)/32.2
Qh=cp*(T3-T2)
P=-T*V1
//results
printf("Thrust = %.1f lbf",T)
printf("\n Heat input = %d B/lbm",Qh)
printf("\n Power = %d ft-lbf /sec",P)
