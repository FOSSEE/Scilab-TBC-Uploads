//Ex:46
clc;
clear;
close;
p_ts=10*log(20)/log(10);//saturated transponder power in dbw
b=2;//back_off in db
p_b=p_ts-b;//power becomes with back_off in db
p_B=floor(p_b);
P_b=10^(p_B/10);//Power becomes with back_off
n_c=P_b/1;//no. of channels
n_cs=floor(n_c);
printf("The max no. of VSAT channels=%f",n_cs);