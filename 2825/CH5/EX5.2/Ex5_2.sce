//Ex5_2 Pg-279
clc

Ic=5.255*10^(-3) //collector current in A
Ib=100*10^(-6) //base current in A
ICBO=5*10^(-6) //collector to base leakage current in A

alpha_dc=(Ic-ICBO)/(Ib+Ic) //common current gain factor
printf("Common current gain factor alpha_dc = %.2f",alpha_dc)  

Beta=alpha_dc/(1-alpha_dc) //Dc emitter current gain factor value in text book is wrong
printf("\n Dc emitter current gain factor beta = %.2f",Beta)

Ie=Ic+Ib //emitter current value in text book wrong
printf("\n Emitter current = %.3f mA",Ie*10^3)
