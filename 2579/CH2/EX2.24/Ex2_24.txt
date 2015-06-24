//Ex:2.24
clc;
clear;
close;
Ta=15;// effective temperature in k
Tn=20;// effective noise temperature in k
B=4*10^6;// noise bandwidth in Hz
k=1.38*10^-23;// boltzmann's constant
Ps_Bn=k*(Ta+Tn);// noise power per unit bandwidth in Watts/Hz
Ps=Ps_Bn*B;// the total available noise power in Watts
printf("The noise power per unit bandwidth= %f*10^-23 Watts/Hz", Ps_Bn*10^23);
printf("\n The total available noise power= %f*10^-17 Watts", Ps*10^17);