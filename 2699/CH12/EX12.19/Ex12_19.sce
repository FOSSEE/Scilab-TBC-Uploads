//EX12_19 Pg-40
clc 
clear
R=2;//frequency deviation constant in KHz/V
V=20;//amplitude of the modulation signal
fd=R*V;// frequency deviation
f=4;//frequency applied in kHz
printf("\n Therefore frequency deviation f=%.0f kHz \n",fd)
m=fd/f;//modulation index
printf("    modulation index m=%.0f ",m)
