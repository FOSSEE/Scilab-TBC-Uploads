//Ex:30
clc;
clear;
close;
t_a=35;//antenna noise temp in K
f=12;//receiver noise figure in db
F=10^(12/10);//receiver noise figure
l_c=10^(5/10);//cable loss
g_lna=10^5;//LNA gain
t_lna=150;//noise temp in K
t_o=290;// in K
t_s=t_a+t_lna+(l_c-1)*t_o/g_lna+l_c*(F-1)*t_o/g_lna;
printf("Gain=%d K",t_s);