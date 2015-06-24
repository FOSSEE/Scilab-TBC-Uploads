//Chapter7.19,Ex7.19,Pg7.33
clc;
Vrms=40
Rf=1 //Diode forward resistance in ohms
Rl=19 //load resistance
Vm=sqrt(2)*Vrms
printf("\n Vm=%.2f V \n",Vm)
Im=Vm/(Rf+Rl)
Idc=(2*Im)/%pi
printf("\n Idc=%.1f A \n",Idc)
Pdc=(Idc^2)*Rl
printf("\n DC load power=%.1f W \n",Pdc)
Pac=((Im/sqrt(2))^2)*(Rf+Rl)
printf("\n Pac=%.2f W \n",Pac)
n=(Pdc/Pac)*100
printf("\n Efficiency=%.2f percent \n",n)
Vnl=(2*Vm)/%pi
Vfl=Idc*Rl
printf("\n Vfl=%.1f V \n",Vfl)
percentreg=((Vnl-Vfl)/Vnl)*100
printf("\n Percentage Regulation=%.2f percent \n",percentreg)
