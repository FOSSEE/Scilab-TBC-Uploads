clc
//initialization of varaibles
P1=100 //psia
T1=500+460 //R
V=10 //cu ft
P2=50 //psia
cv=0.172
R=53.34
v=5.589 //cu ft/lb
//calculations
m=V/v
x2=(v-0.017)/8.498
disp("From table 2,")
T2=281.01//F
h1=1279.1
u1=h1-144*P1*v/778
uf=249.93
ufg=845.4
u2=uf+x2*ufg
Q=m*(u2-u1)
//results
printf("Final temperature = %.2f F",T2)
printf("\n Heat transferred = %d Btu",Q)
