//Ex5_3 Pg-279
clc

Ic=12.427*10^(-3) //collector current in A
Ib=200*10^(-6) //base current in A
ICBO=7*10^(-6) //collector to base leakage current in A

Beta=(Ic-ICBO)/(Ib+ICBO) //Dc emitter current gain factor (value in texbook is wrong)
printf("\n Dc emitter current gain factor beta = %.0f",Beta)

Ie=Ic+Ib //emitter current 
printf("\n Emitter current = %.1f mA",Ie*10^3)

alpha_dc=(Ic-ICBO)/(Ib+Ic) //common current gain factor
printf("\n Common current gain factor alpha_dc = %.2f",alpha_dc)  

Ib=150*10^(-6) //new base current
Ic=Beta*Ib+(Beta+1)*ICBO //collector current (value in textbook is wrong)
printf("\n Collector current = %.3f mA \n",Ic*10^3)
