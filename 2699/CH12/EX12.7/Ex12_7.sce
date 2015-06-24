//EX12_7 Pg-12.25
clc
clear
m=0.6;//modulation index
Itotal=5;//total antenna current
//Ic=total antenna current when only the carrier is sent
Ic=Itotal/sqrt(1+m^2/2)//since Itotal=Ic*sqrt(1+m^2/2)
printf("Therefore total antenna current when only the carrier is sent Ic=%.1f A",Ic)
