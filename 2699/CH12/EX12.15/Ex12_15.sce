//EX12_15 Pg-12.31
clc
clear
m1=0.6;// modulation index
It=1.5;//antenna current when AM transmitter is 50% modulated
Ic=It/sqrt(1+m1^2/2);//carrier current 
m2=0.7//when another modulated signal is added 
m=sqrt(m1^2+m2^2);//total modulation index
It=Ic*sqrt(1+m^2/2)

printf("\n Therefore total antenna current It=%.2f A \n",It)
disp("Ptotal=Pc+Pc*m^2/4+Pc*m^2/4 => Total power radiated")
Pc=poly(0,'Pc');
Ptotal=Pc+Pc*m^2/4+Pc*m^2/4 ;
P=Pc+Pc*m^2/4 //Total power if one of the side band is suppressed 
%P=P/Ptotal;//percentage power saving
%P=horner(%P,1)*100
mprintf("\n Therefore percentage power saving %%P=%.0f %%",%P)
