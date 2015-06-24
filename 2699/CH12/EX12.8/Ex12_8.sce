//EX12_8 Pg-12.26.
clc
clear
Ic=poly(0,'Ic');//unmodulated carrier signal
Itotal=1.15*Ic;//total rms current when the signal is modulated 
x=Itotal/Ic;
x=horner(x,1)
y=2*((x)^2-1)
m=sqrt(y)
printf("modulation index m=%.1f ",m)
