//Chapter 7,Ex7.13,Pg7.30
clc;
Vrms=66.64 
Rl=15
Vm=sqrt(2)*Vrms
printf("\n Vm=%.2f V \n",Vm)
Im=Vm/Rl
printf("\n Im=%.2f A \n",Im)
Idc=Im/%pi
printf("\n Idc=%.0f A \n",Idc)
