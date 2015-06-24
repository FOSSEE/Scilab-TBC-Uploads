//Calculate beta and Iceo and exact and approax collector current
clear;
clc;
//soltion
//given
a0=0.992;//dc current gain in common base configuration
Icbo=48*10^-9;//A
Ib=30*10^-6;//A//base current
B=a0/(1-a0);
Iceo=Icbo/(1-a0);
printf("Beta= %.0f\n",B);
printf("Iceo= %0.f uA\n",Iceo*10^6);
Ic=B*Ib+Iceo;
Ica=B*Ib;//approax
printf("Exact collector current %.3f mA\n",Ic*1000);
printf("Approax collector current %.2f mA",Ica*1000);
