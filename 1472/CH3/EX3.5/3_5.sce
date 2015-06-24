clc
//Initialization of variables
T1=22 //F
T2=32 //F
T3=40 //F
T4=70 //F
cps=0.501 //B/lb F
cpw=1 //B/lb F
Lf=143.3 //B/lb
m=40 //lb
cp=0.092
mc=10
//calculations
Qa=cps*(T2-T1)
Qb=Lf
Qc=cpw*(T3-T2)
Qe=mc*cp*(T3-T4)
mi=-Qe/(Qa+Qb+Qc)
//results
printf("Extra Mass of ice required  = %.3f lb ice",mi)

