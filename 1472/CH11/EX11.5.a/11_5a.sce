clc
//initialization of varaibles
P1=100 //psia
T1=2000+460 //R
P2=15 //psia
g=1.4
cp=0.24
//calculations
v1=53.34*T1/(P1*144)
v2=53.34*T1*(P1/P2)^(1/g) /(P1*144)
T2=T1*P2*v2/(P1*v1)
dh=cp*(T2-T1)
dv=v2-v1
//results
printf("Change in enthalpy = %d B/lb",dh)
printf("\n Specific volume change = %.1f cu ft/lb",dv)
