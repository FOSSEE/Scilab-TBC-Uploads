//Ex:13.4
clc;
clear;
close;
f_rf=162.5;//in kHz
f_af=1.25;//in kHz
f_bfo_max=f_rf+f_af;
f_bfo_min=f_rf-f_af;
printf("The two possible BFO freq. =%f kHz and %f kHz",f_bfo_max,f_bfo_min);