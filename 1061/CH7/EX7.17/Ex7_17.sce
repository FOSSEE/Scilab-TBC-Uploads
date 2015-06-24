//Ex:7.17
clc;
clear;
close;
P_21=4/5;// ratio of the input available at port2 
P_31=1/5;// ratio of the input available at port3 
Lt=-10*log(P_21)/log(10);// throughput loss
Lp=-10*log(P_31)/log(10);// tap loss
Le=-10*log(P_21+P_31)/log(10);// excess loss
printf("The throughput loss =%f dB", Lt);
printf("\n The tap loss =%f dB", Lp);
printf("\n Directionality=-10*log(0/Pi=infinity)");
printf("\n The excess loss =%d dB", Le);