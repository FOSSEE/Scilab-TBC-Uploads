clc
//initialization of varaibles
R=53.34
T1=540 //R
P1=15 //psia
T2=720 //R
P2=60 //psia
PD=150 //cu ft/min
p1=0.03
p2=0.06
//calculations
v1=R*T1/(P1*144)
vratio=T1*P2/(P1*T2)
Nmf=PD*(1-p1*(vratio-1))/v1
Nmf2=PD*(1-p2*(vratio-1))/v1
//results
printf("For clearance of 3 percent, Mass per min = %.1f lb/min",Nmf)
printf("\n For clearance of 6 percent, Mass per min = %.1f lb/min",Nmf2)
