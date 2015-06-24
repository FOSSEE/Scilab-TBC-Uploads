//EX12_10 Pg-12.28
clc
clear
Ptotal=11.8;//radiated power in kW when the carrier is modulated
Pc=10;//radiated power in kW when the carrier is unmodulated
m=sqrt(2*((Ptotal/Pc)-1))
//when another sine wave of 30% of the 
//initial modulation is transmitted simultaneously then
m1=0.3;//added sine wave signal is 30% 
mt=sqrt(m1^2+m^2);
P=Pc*(1+mt^2/2);//total radiated power 
printf("total radiated power P=%.2f kW ",P)
