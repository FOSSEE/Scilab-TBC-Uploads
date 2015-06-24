clc
clear
//Initialization of variables
ha=1033
hbd=1403+1589
hc=7823
hdd=5142
lhv=2733000
M=29
//calculations
wt=hc-hdd
wc=ha-hbd
wnet=wt+wc
heat=hc-hbd
etat=wnet*100/heat
mr=heat/lhv *142/M
AF=1/mr
//results
printf("Thermal efficiency = %.1f percent",etat)
printf("\n Air fuel ratio = %.1f lbm air/lbm fuel",AF)
