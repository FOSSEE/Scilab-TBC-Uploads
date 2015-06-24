//Chapter7,Ex7.21,Pg7.36
clc;
Vrms=250 
Rl=3000
IdcRf=1
Vm=Vrms*sqrt(2)
printf("\n Vm=%.2f V \n",Vm)
Vdc=(2*Vm/%pi)-IdcRf
printf("\n Vdc=%.3f V \n",Vdc)
Idc=Vdc/Rl
printf("\n Idc=%.4f A \n",Idc)
Pdc=(Idc^2)*Rl
printf("\n Pdc=%.2f W \n",Pdc)
Rf=1/Idc
printf("\n Rf=%.2f ohms \n",Rf)
Irms=Vm/((Rf+Rl)*sqrt(2))
printf("\n Irms=%.3f A \n",Irms)
Pac=(Irms^2)*(Rf+Rl)
printf("\n Pac=%.2f W \n",Pac)
PIV=2*Vm //Peak inverse voltage
printf("\n PIV=%.1f V \n",PIV)