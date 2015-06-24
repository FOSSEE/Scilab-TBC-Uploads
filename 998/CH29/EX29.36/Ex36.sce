//Ex:36
clc;
clear;
close;
e_irp=51;// EIRP in dbW
g_t=13.12;//G/T ratio in db/k
l_fs=205.34;//free space loss in db
l_ab=0.17;//atmospheric absorption loss in db
df=16;// in MHz
f_v=5;// in MHz
B=df+2*f_v;// in MHz
k=1.38*10^(-23);// Boltzmann's const in J/K
k_b=k*B*10^6;
kB=10*log(k_b)/log(10);
c_n=e_irp-l_fs+g_t-l_ab-kB;
printf("carrier to noise ratio=%f dbw",c_n);