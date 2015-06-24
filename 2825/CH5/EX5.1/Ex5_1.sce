//Ex5_1 Pg-278
clc

alpha_dc=0.97 //transistor current gain
ICBO=10*10^(-6) //collector to base leakage current in A
Ib=50*10^(-6) //base current in A

Ic=((alpha_dc*Ib)/(1-alpha_dc))+(ICBO/(1-alpha_dc)) //collector current
printf("Collector current = %.2f mA \n",Ic*10^3)

Ie=Ic+Ib //emitter current
printf(" Emitter current = %.0f mA",Ie*10^3)
