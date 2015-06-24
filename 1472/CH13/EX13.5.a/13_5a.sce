clc
//initialization of varaibles
P1=150 //psia
T1=400+460 //R
P2=15  //psia
n=1.15
cv=0.172
R=53.34
//calculations
v2=R*T1*(P1/P2)^(1/n) /(P1*144)
v1=R*T1/(P1*144)
T2=T1*P2*v2/(P1*v1)
Q=(cv - 0.458)*(T2-T1)
//results
printf("Final specific volume = %.1f cu ft/lb",v2)
printf("\n Final temperature = %d R",T2)
printf("\n Heat transferred = %.1f B/lb",Q)
