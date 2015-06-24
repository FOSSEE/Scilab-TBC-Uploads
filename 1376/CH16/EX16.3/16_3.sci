//16.3
clc;
pf=(1.8*1000)/(1100*(3^0.5));
Z=1100/100;
R=Z*pf;
printf("\nResistance of the load=%.2f ohm",R)
Xl=(121-108)^0.5;
L=Xl/314;
printf("\nInductive reactance of the load=%.2f H",L)