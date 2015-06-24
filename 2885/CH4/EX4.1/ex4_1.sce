//determine the collector and base current
clear;
clc;
//soltion
//given
a=0.98;//dc alpha
Ie=5*10^-3;//A//emitter current
Ico=2*10^-6;//A//collector reverse leakage current
Ic=a*Ie+Ico;
Ib=Ie-Ic;
printf("The collector current is %.3f mA\n",Ic*1000);
printf("The base current is %.0f uA",Ib*10^6);
