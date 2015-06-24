clc
//initialization of varaibles
P1=200 //psia
T1=750+460 //R
P2=1 //psia
//calculations
disp("From steam tables,")
h1=1399.2
h2=976
h3=69.70
v3=0.01614
dh3=v3*(P1-P2)*144/778
h4=dh3+h3
Q1=h1-h4
Wt=h1-h2
Wp=h4-h3
eta=(Wt-Wp)/Q1
w=2545/Wt
//results
printf("Heat supplied = %d B/lb",Q1+1)
printf("\n Turbine work = %d B/lb",Wt)
printf("\n Pump work = %.3f B/lb",Wp)
printf("\n Efficiency =  %.3f",eta)
printf("\n Steam rate = %.2f lb steam per hr",w)
