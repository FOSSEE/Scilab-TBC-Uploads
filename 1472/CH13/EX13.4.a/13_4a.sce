clc
//initialization of varaibles
P1=150 //psia
T1=400+460 //R
P2=15 //psia
g=1.4
R=53.34
//calculations
Tratio=(P2/P1)^((g-1)/g)
W=53.34*T1*(Tratio-1)/(1-g)
T2=T1*Tratio
v2=R*T2/(P2*144)
u1=147.50
Pr1=7.149
Pr2=Pr1*P2/P1
disp("From tables,")
Pr=0.7149
T2=447 //R
u2=76.13 //B/lb
W=-(u2-u1)
v2=R*T2/(P2*144)
//results
printf("Final specific volume = %.1f cu ft/lb",v2)
printf("\n Work per pound of fluid = %.1f B/lb",W)
