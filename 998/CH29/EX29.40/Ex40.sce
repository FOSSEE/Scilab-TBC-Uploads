//Ex:40
clc;
clear;
close;
k=-228.6;//dbW/K/Hz
b_n=10*log(128*(10^3))/log(10);// in dbHz
t_s=10*log(500)/log(10);//in dbk
t_S=ceil(t_s);
n_tr=k+t_S+b_n;// in dbW
printf("noise power=%f dbW",n_tr);