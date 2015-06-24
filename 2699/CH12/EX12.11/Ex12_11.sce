//EX12_11 Pg-12.30
clc
clear
Ptotal=10;//radiated power in kW when the carrier is modulated
m=0.75;//modulation index
Pc=Ptotal/(1+m^2/2)//since Ptotal=Pc*sqrt(1+m^2/2)
printf("\n carrier power Pc=%.1f kW \n",Pc)
