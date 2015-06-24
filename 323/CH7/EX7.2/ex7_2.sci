//Chapter7,Pg7.4,Ex7.2
clc;
Bdc=90 //
Ic=15 //Collector current
Ib=Ic/Bdc
printf("\n Ib=%.2f uA \n",Ib*10^3)
Ie=Ib+Ic
printf("\n Emitter current Ie=%.2f mA \n",Ie)
Adc=Bdc/(Bdc+1)
printf("\n Adc=%.2f \n",Adc)
