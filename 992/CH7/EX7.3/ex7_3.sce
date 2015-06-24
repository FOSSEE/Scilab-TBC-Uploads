
//Exa:7.3
clc;
clear;
close;
//Given:
lim_signal=30*10^-3;//in mV
in_sig=5*10^-6;//in uV
to=lim_signal/in_sig;
t=20*log10(to);
printf("\n total gain= %fdB",t);
