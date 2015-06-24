//Ex:90
clc;
clear;
close;
t_a=60;// antenna noise temp in k
l1=1.075;//loss in waveguide in K
t_o=290;// in K
t_e2=160;// in K;
t_e3=10000;// in k
G2=10^6;// low noise ampr gain
t_eq=(l1-1)*t_o+(t_e2*l1)+(t_e3*l1)/G2;// in K
t_s1=t_a+t_eq;// in k
T_s1=10*log(t_s1)/log(10);// in db
G=66;// in db
g_t1=G-T_s1;//G/T ratio in db/K
t_s2=(t_a*G2)/l1+(l1-1)*(t_o*G2)/l1+(t_e2*G2)+t_e3;
T_s2=10*log(t_s2)/log(10);// in db
G_2=66-0.3+60;// in db
g_t2=G_2-T_s2;//G/T ratio in db/K
printf("The G/T ratio=%f db/K", g_t1);
printf("\n The G/T ratio=%f db/K", g_t2);
printf("\n Both the G/T ratio are same");