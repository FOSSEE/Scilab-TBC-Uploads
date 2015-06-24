//Ex:4.9
clc;
clear;
close;
Pi=100*10^-6;// average optical power in watt
Po=4*10^-6;// average output power in watt
L=6;// in km
L1=10;// in km
sa=10*log(Pi/Po)/log(10);// signal attenuation
sp=sa/L;// signal attenuation per km
sn=sp*L1;// signal attenuation for 12 km
sn1=sn+9;// overall signal attenuation in dB
printf("The signal attenuation=%f dB", sa);
printf("\n The signal attenuation per km =%f dB/km", sp);
printf("\n The overall signal attenuation=%d dB ", sn1);