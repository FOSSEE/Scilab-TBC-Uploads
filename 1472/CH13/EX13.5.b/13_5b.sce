clc
//initialization of varaibles
disp("From table 3,")
v1=3.223 //cu ft/lb
P1=150 //psia
T1=400+460 //R
P2=15  //psia
n=1.15
//calculations
v2=v1*(P1/P2)^(1/n)
T2=213 //F
W=144*(P2*v2-P1*v1)*0.00129/(1-n)
u1=1129.8 //B/lb
v2=23.9
vg=26.29
vfg=26.27
dx=(vg-v2)/vfg
u2=996.1
Q=(u2-u1)+W
//results
printf("Final specific volume = %.1f cu ft/lb",v2)
printf("\n Final temperature = %d F",T2)
printf("\n Heat transferred = %.1f B/lb",Q)
