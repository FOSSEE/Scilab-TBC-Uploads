//Ex:42
clc;
clear;
close;
b_n=10*log(10^6)/log(10);// in dbHz
t_s=10*log(500)/log(10);//temp in dbK
T_s=ceil(t_s);
k=-228.6;// in db
n_rt=k+b_n+T_s;//the noise power in transponder-2 in dbW
printf("the noise power in transponder-2=%f dbW",n_rt);