clc
clear
//Initialization of variables
x=0.8
he=26.28 //Btu/lbm
hb=26.28 //Btu/lbm
pe=98.76 //psia
pc=51.68 //psia
hc=82.71 //Btu/lbm
hf=86.80+0.95
//calculations
dwisen=-(hf-hc)
dwact=dwisen/x
hd=hc-dwact
cop=(hc-hb)/(hd-hc)
//results
printf("Coefficient of performance = %.2f",cop)
