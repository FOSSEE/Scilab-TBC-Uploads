//Ex:43
clc;
clear;
close;
k=-228.6;// in db
t_s=10*log(150)/log(10);// temp in dbK
b_n=10*log(10^6)/log(10);// in dbHz
n_h=k+t_s+b_n;//the noise power in the VSAT in dbW
printf("the noise power in the VSAT=%f dbW",n_h);