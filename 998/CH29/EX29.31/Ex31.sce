//Ex:31
clc;
clear;
close;
k=-228.6;// in db
e_irp=50;// EIRP in dbW
g_t=19.5;//G/T ratio in db/k
l_fs=210;//free space loss in db
l_ab=2;//atmospheric absorption loss in db
l_ap=2;//antenna pointing loss in db
l_rf=1;//receiver feedback loss in db
l_s=l_fs+l_ab+l_ap+l_rf;//losses in db
c_n=e_irp+g_t-l_s-k;// C/N spectral density ratio in db
printf("carrier to noise spectral density ratio=%d dbW",c_n);