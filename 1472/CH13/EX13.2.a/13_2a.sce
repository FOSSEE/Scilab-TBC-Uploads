clc
//initialization of varaibles
T1=350+460 //R
v1=6 //cu ft/lb
m=1 //lb
R=53.34
v2=2*v1
cp=0.24
//calculations
P=R*T1/(v1*144)
W=P*144*(v2-v1)
T2=T1*v2/v1
Q=cp*(T2-T1)
h1=194.25
h2=401.09
dh=h2-h1
//results
printf("Final temperature = %d F",T2-460)
printf("\n Enthalpy = %.2f B/lb",dh)
printf("\n Heat = %d B/lb",Q)
