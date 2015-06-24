clc
clear
//Initialization of variables
t=60 //F
J=778.16
p1=600 //psia
p2=0.2563 //psia
etaf=0.85 
//calculations
disp("From steam tables,")
vf=0.01604 //ft^3/lbm
dw=-vf*(p1-p2)*144/J
ha=28.06 //Btu/lbm
hb=29.84 //Btu/lbm
hd=1203.2 //Btu/lbm
he=750.5 //Btu/lbm
dqa=hd-hb
dqr=ha-he
dw=dqa+dqr
dwturb=hd-he
dwpump=ha-hb
etat=dw/dqa
eta=etat*etaf
//results
printf("Thermal efficiency = %.1f percent",etat*100)
printf("\n Overall efficiency = %.1f percent",eta*100)
    
