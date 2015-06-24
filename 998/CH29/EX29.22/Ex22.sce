//Ex:22
clc;
clear;
close;
k=-228.6;//Boltzmann's const in dbW/K/Hz
t_s=10*log(500)/log(10);//in db
B=10*log(43.2*10^6)/log(10);//in dbHz
n_tr=k+t_s+B;//Transponder noise power in dbW
p_r=n_tr+30;//received power at the transponder input must be 30 db greater than noise power in db
g_st=16.2;//Satellite antenna gain in db
g_est=25;//Earth statiion antenna gain in db
p_rs=95.2;// in db
l_ss=207+3;//Losses in db
p_t=p_rs+g_st+g_est-l_ss;
printf("Required transmitted power=%f dbW", p_t);