//Ex:7.13
clc;
clear;
close;
P1=65;// optical power in uW
P2=0.005;// output power at port 2 in uW
P3=24;// output power at port 3 in uW
P4=26.5;// output power at port 4 in uW
Le=10*log(P1/(P3+P4))/log(10);// Excess loss in dB
Le1=10*log(P1/P3)/log(10);// insertion loss port 1 to 3 in dB
Le2=10*log(P1/P4)/log(10);// insertion loss port 1 to 4 in dB
ct=10*log(P2/P1)/log(10);// cross talk in dB
sr=(P3/(P3+P4))*100;// split ratio
printf("The Excess loss =%f dB", Le);
printf("\n The insertion loss port 1 to 3  =%f dB", Le1);
printf("\n The insertion loss port 1 to 4  =%f dB", Le2);
printf("\n The cross talk =%f dB", ct);
printf("\n The split ratio =%f %%", sr);