//Chapter 7,Ex 7.7,Pg 7.15
clc;
a=0.98
Vce=0.2 
Ic=2*10^-3
Vcc=12
Rc=4
b=a/(1-a)
printf("\n Beta=%.0f \n",b)
Ice=(Vcc-Vce)/Rc
printf("\n Ic=%.2f mA \n",Ic*10^3)
Ib=Ic/b
printf("\n Ib(sat)=%.2f uA \n",Ib*10^6)

