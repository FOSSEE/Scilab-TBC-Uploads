clc
clear
//Initialization of variables
dhab=-123.1
etac=0.5
ha=348.5
etaf=0.75
eta=0.85
hf=471.6
hfg=731.6
hc=1203.2
dhcd=452.7
//calculations
dwabs=dhab/etac
hbd=ha-dwabs
dwcds=dhcd*eta
dqa=hc-hbd
etat=(dwcds+dwabs)/dqa
eta=etat*etaf
//results
printf("Thermal efficiency = %.1f percent",etat*100)
printf("\n Overall efficiency = %.1f percent",eta*100)
