//Ex:13
clc;
clear;
close;
k=-228.6;//Boltzman;s const in dbW/k/Hz
t_s=18.8;//System temp noise in db
b_n=74.3;//Noise bandwidth in db
n_r=k+b_n+t_s;//Receiver noise power in db watt
printf("Receiver noise power=%f db watt",n_r);