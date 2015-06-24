//Ex:95
clc;
clear;
close;
g_a=55;// antenna gain in db
l_w=0.1;//waveguide loss in db
L=10^(0.01);//waveguide loss
t_o=300;// in k
t_a=25+3.3+1+10+15;//antenna noise temperature in k
t_e=(L-1)*t_o;//equivalent noise temp in k
t_s=t_a+(L-1)*t_o/L;// in k
g_ln=10^(55/10);
t_eq=45+(315000/g_ln);// in K
t=t_s+t_eq;// in K
G=g_a-l_w;// in db
g_t=G-10*log(t)/log(10);// in db/K
printf("The system noise temperature =%d k", t);
printf("\n The G/T ratio=%f db/K", g_t);