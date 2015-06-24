//EX12_14 Pg-12.30
clc
clear
m=0.5;// modulation index
It=12;//antenna current when AM transmitter is 50% modulated
Ic=It/sqrt(1+m^2/2);//carrier current 
m=0.9;//when modulation depth is increase to 0.9 
It=Ic*sqrt(1+m^2/2)
printf("Therefore total antenna current It=%.2f A",It)

