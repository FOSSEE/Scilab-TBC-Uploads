//Ex:4.8
clc;
clear;
close;
Pi=200*10^-6;// average optical power in watt
Po=5*10^-6;// average output power in watt
L=20;// in km
L1=12;// in km
ns=5;// number of attenuation
a=0.9;// attenuation in dB
sa=10*log(Pi/Po)/log(10);// signal attenuation
sp=sa/L;// signal attenuation per km
sn=sp*L1;// signal attenuation for 12 km
sn1=ns*a;// attenuation in dB
sn2=sn+sn1;// overall signal attenuation in dB
printf("The signal attenuation per km =%f dB/km", sp);
printf("\n The overall signal attenuation=%f dB ", sn2);