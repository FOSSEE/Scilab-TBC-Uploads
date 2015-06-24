//Ex:89
clc;
clear;
close;
t_a=60;// antenna noise temp in k
l1=1.075;//loss in waveguide in K
t_o=290;// in K
t_e2=160;// in K;
t_e3=10000;// in k
G2=10^6;// low noise ampr gain
t_s=(t_a/l1)+(l1-1)*(t_o)/l1;// noise temp in k
t_e=t_e2+(t_e3/G2);// Equivalent noise temp in K
t=t_s+t_e;// system noise temp in k
T=10*log(t)/log(10);//system noise temp in db
G=66-0.3;// in db
g_t=G-T;//G/T ratio in db/K
printf("The system noise temperature=%f K", t);
printf("\n The G/T ratio=%f db/K", g_t);