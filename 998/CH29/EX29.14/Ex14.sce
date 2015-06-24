//Ex:14
clc;
clear;
close;
p_r=-96.4;//Received power in db watt
n_r=-135.5;//Receiver noise power in db watt
cn_r=p_r-n_r;//C/N ratio in db watt
printf("C/N ratio=%f db watt",cn_r);