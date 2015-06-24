
//Exa:7.4
clc;
clear;
close;
//Given:
lim_signal=20*10^-3;//in mV
in_sig=2*10^-6;//in uV
to=lim_signal/in_sig;
t=20*log10(to);
printf("\n total gain= %fdB",t);
