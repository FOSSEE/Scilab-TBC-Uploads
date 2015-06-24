clc
//initialization of variables
Pb=75 //psia
Pc=15 //psia
k=1.4
Td=550 //R
Tb=1700  //R
cp=0.24
//calculations
Prd=1.4779
hd=131.46 //B/lb
Prb=90.95
hb=422.59 //B/lb
Pratio=Pb/Pc
Pra=Pratio*(Prd)
Ta=868 //R
ha=208.41
Prc=Prb/Pratio
Tc=1113//R
hc=269.27
Q1=hb-ha
Q2=hc-hd
Wnet=Q1-Q2
eta=Wnet/Q1
//results
printf("Efficiency = %.3f",eta)
printf("\n Work per pound of fluid = %.2f B/lb",Wnet)
