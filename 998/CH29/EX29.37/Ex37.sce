//Ex:37
clc;
clear;
close;
d_r=24;//Data rate in Kbits/s
t_b=1/(d_r*10^3);//bit time in sec
t_bi=.0005;// in sec
p_d=2*0.240;//path delay in sec
printf("Waiting of ack takes place %f sec", t_bi+p_d);
t_ack=p_d+t_bi;//Acknowledgement time in sec
n_b=79;// number of blocks
t_tr=n_b/2;//Time taken for transmission in sec
r_b=(n_b*127)/t_tr;//bit transmission rate in bits/s
printf("\n bit transmission rate =%f bits/s",r_b);