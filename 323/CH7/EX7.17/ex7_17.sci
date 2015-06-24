//Chapter 7,Ex 7.17,Pg 7.31
clc;
Rf=1
Idc=100
Vrms=12.6
Rs=3 
Vm=sqrt(2)*Vrms
printf("\n Vm=%.2f V \n",Vm)
Im=Idc*%pi
printf("\n Im=%.3f mA \n",Im)
//Let us use the formula Im=Vm/(Rs+Rf+Rl) to obtain the value of Rl
Rl=(17.82-Im*(Rs+Rf))/Im
printf("\n Rl=%.2f V \n",Rl)
Vdc=Idc*Rl
printf("\n Vdc=%.3f V \n",Vdc)
Vnl=Vm/%pi
Vfl=Idc*Rl
percentreg=((Vnl-Vfl)/Vnl)*100
printf("\n Percent regulation=%.2f \n",percentreg*10^-3)