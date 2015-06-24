//Ex:13.5
clc;
clear;
close;
f_rf_1=88;//in MHz
f_rf_2=108;//in MHz
f_if=10.7;//in MHz
f_lo_1=f_rf_1+f_if;
f_lo_2=f_rf_2+f_if;
printf("The range local oscillator be tuned =%f MHz & %f MHz",f_lo_1,f_lo_2);