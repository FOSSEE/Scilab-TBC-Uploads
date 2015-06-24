//EX12_16 Pg-12.32
clc
clear
disp(" Output voltage of the transmitter Vam=400(1+0.4sin6280t)sin3.14*10^7t")
Vc=400;//amplitude of carrier voltage 
m=0.4;//modulation index
R=600;//load resistance
wm=6280;
wc=3.14e7;
fc=wc/(2*%pi);
fm=wm/(2*%pi);
Pc=Vc^2/(2*R);
Ptotal=Pc*(1+m^2/2);
printf("\n carrier frequency Fc=%.0f MHz \n modulating frequency =%.0f Hz \n ",fc*1e-6,fm)
printf("\n carrier power Pc=%.2f W \n Total power output Ptotal=%.1f W \n",Pc,Ptotal)
//peak power output results when modulating signal
//is at the peak of the +ve half cycle 
Vm=m*Vc;
V=Vc+Vm;//peak output voltage
P=V^2/(2*R);//peak power output 
printf("\n Peak output voltage P=%.2f W ",P)
//The exact value of fc is 4997465 Hz but in the book the 
//value is taken as 5 MHz  same is the case for fm
