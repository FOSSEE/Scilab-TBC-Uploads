//Ex:26
clc;
clear;
close;
r_b=10*log(1.544*10^6)/log(10);//bit rate in db bit/s
Eb_n=9;//Eb/No in db
c_n=Eb_n+r_b;//C/N ratio in db
c_ns=71;//in db
g_t=-8;//G/T ratio in db
l_s=210;//Losses in db
k=228.6;//in db
e_rp=c_ns+g_t+l_s-k
G_upa=42;//uplink antenna gain in db
p_t=e_rp-G_upa;// in dbW
p_t1=10^(p_t);// in Watt
printf("required power =%f dbW",p_t);
printf("\n required power =%f Watt",p_t1);