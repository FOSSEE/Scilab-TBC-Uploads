clc
//initialization of varaibles
P1=100 //psia
T1=2000+460 //R
P2=15 //psia
g=1.4
cp=0.276
cv=0.207
T2=1520 //R
//calculations
k=cp/cv
v1=53.34*T1/(P1*144)
v2=v1*(P1/P2)^(1/k)
dh=cp*(T2-T1)
dv=v2-v1
//results
printf("Enthalpy change = %d B/lb",dh)
printf("\n Volume change = %.1f cu t/lb",dv)
