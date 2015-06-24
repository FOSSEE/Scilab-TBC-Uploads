//Ex:12
clc;
clear;
close;
p_t=13;//Tranponder output power in db w
b_t=1;//Transponder output backoff in db
g_t=30;//satellite antenna gain in db
g_r=59.2;//Earth station antenna gain in db
l_fs=195;//Free space loss in db
l_a=-2;//Edge of beam loss in db
l_air=0.2;//Air atmospheric loss in db
l_o=0.4;//Other losses in db
p_r=p_t+g_t+g_r-b_t-l_fs-l_a-l_air-l_o;//Received power in db w
printf("received power=%f db watt",p_r);