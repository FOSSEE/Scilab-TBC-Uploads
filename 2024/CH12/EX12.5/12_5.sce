clc
//Initialization of variables
sh=1.6070
ph=94.8 //psia
th=324 //F
tr=60 //F
hh=1186.2 
pi=94.8 //psia
hi=1399.5
si=1.8265
//calculations
Q=hi-hh
Hr=-(tr+459.7)*(si-sh)
work= Q+Hr
eff=work/Q
Qa1=1557.5
W1=637.1 
etat=W1/Qa1
he=1374
hj=948
Whp=he-hh
Wlp=hi-hj
//results
printf("Thermal efficiency in case 1= %.1f percent",eff*100)
printf("\n Thermal efficiency in case 1= %.1f percent",etat*100)
printf("\n High pressure work = %.1f Btu/lbm",Whp)
printf("\n Low pressure work = %.1f Btu/lbm",Wlp)
