// Example 3.8 page no-169
clear
clc

Vdc=250 //V
Idc=0.1
rc=400
rl=Vdc/Idc
Vm=(Vdc*%pi/2)*(1+(rc/rl))
Vrms=Vm/sqrt(2)
printf("Vrms=%dV\n\nTherefore, the transformer should supply \n%dV rms on each side of the centre tap.",Vrms,Vrms)
L=10 //Ohm
c=20*10^-6
w=377
Ib=2*Vm/(3*%pi*w*L)
rf=0.47/(4*w^2*c)
printf("\n\nIb=%.4f A\nRipple factor=%f",Ib,rf)
