clc
//Initialization of variables
Tm=235 //F
Tb=832 //F
T=70 //F
cps=0.18 //B/lb F
cpl=0.235 //B/lb F
Lf=15.8 //B/lb
Lv=120 //B/lb
m=10 //lb
//calculations
Qa=m*cps*(Tm-T)
Qb=m*Lf
Qc=m*cpl*(Tb-Tm)
Qd=m*Lv
Q=Qa+Qb+Qc+Qd
//results
printf("Heat required = %d Btu",Q)
