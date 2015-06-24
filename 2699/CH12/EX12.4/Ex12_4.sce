//EX12_4 Pg-12.22
clc
clear
//modulation index
Vm=10;//peak value of the audio frequency signal
Vc=50;//peak value of the carrier signal
m=Vm/Vc;//modulation index
%m=m*100;
printf("modulation index m=%.1f \n     ie          %%m=%.0f %% \n",m,%m)
//sideband frequencies
wm=2*%pi*500;
fm=wm/(2*%pi);
wc=2*%pi*1e5;
fc=wc/(2*%pi);
fusb=fc+fm;//upper side band frequency
flsb=fc-fm;//lower side band frequency
printf("\n Therefore upper side band frequency fusb=%.1f kHz \n",fusb*1e-3)
printf(" Therefore lower side band frequency fusb=%.1f kHz \n",flsb*1e-3)
//amplitude of each sinusoidal frequency
A=m*Vc/2;
printf("\n amplitude of upper and lower side bands=%.f V \n",A)
//bandwidth required
BW=fusb-flsb;//required bandwidth 
printf("\n required bandwidth BW=%.0fHz\n",BW)
//power delivered to the load
R=600;//load resistance
P=Vc^2/(2*R)*(1+m^2/2)
printf("\n power delivered to the load %.3f W \n ",P)
//transmission efficiency
n=m^2/(2+m^2)*100;
mprintf("\n transmission efficiency n=%.2f %% \n",n)
