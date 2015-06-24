//Ex:100
clc;
clear;
close;
p_c=10*log(200)/log(10);// carrier power in db
g_t=57.6;// transmit gain in db
B_oi=0;// in db
e_s=p_c+g_t+B_oi;//satellite saturation EIRP in dbW
k=10*(log(1.38)/log(10)-23*log(10)/log(10));// Boltzmann's const in db
B=10*log(36000000)/log(10);// in db
L=1.5;// in db
s=20*log((4*3.14*14*(10^9)*37000*(10^3))/(3*(10^8)))/log(10);
g_t=1.6;// in db
c_nu=e_s-s+g_t-k-B-B_oi-L;
G=56.3;// in db
g_td=G-10*log(160)/log(10);
L1=1;// in db
e_s1=44;// in db
s1=20*log((4*3.14*12*(10^9)*37000*(10^3))/(3*(10^8)))/log(10);
c_nd=e_s1-s1+g_td-k-B-B_oi-L1;
c_u=10^(27/10);
c_d=10^(24.9/10);
c_n=(c_u*c_d)/(c_u+c_d);
printf("The uplink carrier to noise ratio=%f db", c_nu);
printf("\n The downlink carrier to noise ratio=%f db", c_nd);
printf("\n The carrier to noise ratio=%f db", 10*log(c_n)/log(10));