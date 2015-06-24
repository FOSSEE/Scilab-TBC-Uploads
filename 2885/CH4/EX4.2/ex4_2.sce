//determine the base and collector current and exact and approax dc alpha 
clear;
clc;
//soltion
//given
Ie=8.4*10^-3//A//emitter current
Icbo=0.1*10^-6;//A//reverse leakage current
Ib=0.008*Ie;//A//base current
Ic=Ie-Ib;
Icinj=Ic-Icbo;
a0=Icinj/Ie;
a=Ic/Ie;
printf("Base current is %.1f uA\n",Ib*10^6);
printf("Collector current %.4f mA\n",Ic*1000);
printf("Exact value of alphha = %.7f\n",a0);
printf("Approax value of alpha = %.3f",a);
