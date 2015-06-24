// 3.6
clc;
EL=0.1;
Zo=250*10^3;
ZL=2.5*10^6;
Eo=EL*(1+(Zo/ZL));
B=0.1;
l=50*10^-3;
G=1000;
v=Eo/(B*l*G);
printf("Average flow rate=%.2f degree m/s",v)
Zon=1.2*250*10^3;
ELn=2*Eo/(1+(Zon/ZL));
PDV=[(0.2-ELn)/0.2]*100;
printf("Percentage decrease in voltage=%.2f degree m/s",PDV)

