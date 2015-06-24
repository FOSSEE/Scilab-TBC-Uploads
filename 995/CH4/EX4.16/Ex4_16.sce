//Ex:4.16
clc;
clear;
close;
V_p=200;
V_s=10;
N_p=1200;
N_s=N_p*V_s/V_p;
i_s=2.5;
i_p=N_s*i_s/N_p;
printf("Secondry turns = %d ",N_s);
printf("\nprimary current = %f A",i_p);