//Ex:7.10
clc;
clear;
close;
y=5*10^-6;// lateral misalignment in m
a=25*10^-6;// core diameter in m
Lt=0.85*(y/a);// misalignment loss
n_c=1-Lt;// coupling efficiency
L_i=-10*log(n_c)/log(10);// insertion loss in dB
Lt1=0.75*(y/a);// misalignment loss if we have both guided and leaky modes
n_c1=1-Lt1;// coupling efficiency
L_i1=-10*log(n_c1)/log(10);// insertion loss in dB if we have both guided and leaky modes
printf("The insertion loss =%f dB", L_i);
printf("\n The insertion loss,if we have both guided and leaky modes =%f dB", L_i1);