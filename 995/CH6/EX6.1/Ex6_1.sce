//Ex:6.1
clc;
clear;
close;
V_p=220;
V_s=V_p/44;
V_pk=1.414*V_s;//in volts
V_l=V_pk-0.6;
printf("Peak voltage that appear across load = %f V",V_l);