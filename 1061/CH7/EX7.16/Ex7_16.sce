//Ex:7.16
clc;
clear;
close;
P0=250;// optical power in uW
P1=80;// output power at port 1 in uW
P2=70;// output power at port 2 in uW
P3=5*10^-3;// output power at port 3 in uW
cr=(P2/(P1+P2))*100;// coupling ratio
Le=10*log(P0/(P1+P2))/log(10);// Excess loss in dB
Le1=10*log(P0/P1)/log(10);// insertion loss port 0 to 1 in dB
Le2=10*log(P0/P2)/log(10);// insertion loss port 0 to 2 in dB
ct=10*log(P3/P0)/log(10);// cross talk in dB
printf("The coupling ratio =%f %%", cr);
printf("\n The Excess loss =%f dB", Le);
printf("\n The insertion loss port 0 to 1  =%f dB", Le1);
printf("\n The insertion loss port 0 to 2 =%f dB", Le2);
printf("\n The cross talk =%f dB", ct);