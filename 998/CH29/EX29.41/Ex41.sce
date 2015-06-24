//Ex:41
clc;
clear;
close;
k=-228.6;// in db
t_s=10*log(150)/log(10);// in dbK
b_n=51.1;// in dbHz
n_h=k+t_s+b_n;//the noise power in the hub station receiver in dbw
printf("noise power=%f dbW",n_h);