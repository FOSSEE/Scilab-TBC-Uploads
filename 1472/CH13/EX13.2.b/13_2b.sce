clc
//initialization of varaibles
T1=350+460 //R
v1=6 //cu ft/lb
m=1 //lb
R=53.34
v2=2*v1
cp=0.24
//calculations
disp("From steam tables,")
vg=3.342 //cu ft/lb
P1=77.5 //psia
P2=P1
h1=1204.8  //B/lb
v2=2*v1
T2=1106 //F
h2=1586.7 //B/lb
Q=h2-h1
W=P1*144*(v2-v1)
//results
printf("Final temperature = %d F",T2)
printf("\n Work = %d ft lb/lb",W)
printf("\n Heat = %.1f B/lb",Q)
