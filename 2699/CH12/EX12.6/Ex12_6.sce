//EX12_6 Pg-12.23
clc
clear
m=0.75;//modulation index
P=20;//total power in kW
Pc=P/(1+m^2/2)//since P=Pc*(1+m^2/2)
printf("therefore carrier power in the modulated wave is %.1f kW",Pc)
Psb=Pc*m^2/4;//side band power
Pusb=Psb;
Plsb=Psb;
printf("\n Pusb=%.1f kW \n Plsb=%.1f kW",Pusb,Plsb)
