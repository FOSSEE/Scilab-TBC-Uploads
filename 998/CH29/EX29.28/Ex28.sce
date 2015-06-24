//Ex:28
clc;
clear;
close;
p_s=10*log(6)/log(10);//transmit power in db
g_a=50.2;// Antenna gain in db
e_rp=p_s+g_a;//EIRP in dbW
printf("The EIRP=%f dbW", e_rp);