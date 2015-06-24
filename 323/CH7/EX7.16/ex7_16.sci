//Chapter 7,Ex7.16,Pg7.30
clc;
Vdc=50
Rl=800
Rf=25
Vm=(Vdc*%pi*(Rf+Rl))/Rl
printf("\n Vm=%.0f \n",Vm)
Vrms=Vm/sqrt(2)
printf("\n Vrms=%.2f V \n",Vrms)
