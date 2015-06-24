clc
//Initialization of variables
T1=70+460 //R
P1=14.7 //psia
g=1.4
r=15
rc=2
cp=0.24
cp2=0.1715
//calculations
T2=T1*(r)^(g-1)
T3=rc*T2
T4=T3*(rc/r)^(g-1)
Qh=cp*(T3-T2)
Ql=cp2*(T4-T1)
W=Qh-Ql
eta=W/Qh
//results
printf("Work output = %d B/lbm",W)
printf("\n Efficiency = %.1f percent",eta*100)
