//Ex:45
clc;
clear;
close;
p_tr1=-135;//power received in transponder-1 in dbW
n_tr1=-150.5;//noise power in transponder-1 in dbw
c_n=p_tr1-n_tr1;//C/N ratio in db
printf("The C/N ratio=%f db",c_n);