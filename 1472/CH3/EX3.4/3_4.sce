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
//calculations
Qa=cps*(T2-T1)
Qb=Lf
Qc=cpw*(T3-T2)
Qd=m*cpw*(T3-T4)
mi=-Qd/(Qa+Qb+Qc)
//results
printf("Mass of ice required  = %.2f lb ice",mi)
