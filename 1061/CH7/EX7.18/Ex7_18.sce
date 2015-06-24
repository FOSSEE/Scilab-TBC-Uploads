//Ex:7.18
clc;
clear;
close;
Le=4;// excess loss in dB
D=60;// Directionality in dB
P_41=10^-6;// the ratio of P4 to P1
P_31=0.670/5;// the ratio of P3 to P1
P_21=P_31*4;// the ratio of P2 to P1
Lt=-10*log(P_21)/log(10);// throughput loss
Lp=-10*log(P_31)/log(10);// tap loss
Ls=-10*log(0.670)/log(10);// loss due to radiation scattering in dB
printf("The fraction of the input power goes to each of the ports =%f dB", P_21);
printf("\n The throughput loss =%f dB", Lt);
printf("\n The tap loss =%f dB", Lp);
printf("\n The loss due to radiation scattering =%f dB", Ls);