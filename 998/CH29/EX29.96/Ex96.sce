//Ex:96
clc;
clear;
close;
t_o=300;// in K
g_a=65;// antenna gain in db
n_c=60;//in K
l_w=0.5;//waveguide loss in db
g_s=g_a-l_w;//system gain in db
L=10^(.5/10);
t_s=(n_c/L)+(L-1)*t_o/L;
g_t=40;// in db/K
t=10^((g_s-g_t)/10);//in k
t_e=t-t_s;//in k
printf("The equivalent noise temperature=%f K", t_e);