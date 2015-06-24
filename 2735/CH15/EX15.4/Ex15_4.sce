clc
clear
//Initialization of variables
dhab=-1.78
etac=0.5
ha=28.06
eta=0.85
hf=471.6
hfg=731.6
hd=1203.2
dhcd=452.7
//calculations
dwabs=dhab/etac
hbd=ha-dwabs
dwcds=dhcd*eta
dqa=hd-hbd
etat=(dwcds+dwabs)/dqa
eta=etat*eta
//results
printf("Thermal efficiency = %.1f percent",etat*100)
printf("\n Overall efficiency = %.1f percent",eta*100)

