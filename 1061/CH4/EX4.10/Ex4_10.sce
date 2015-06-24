//Ex:4.10
clc;
clear;
close;
Pi=20*10^-6;// average optical power in watt
Po=7.5*10^-6;// average output power in watt
sl=10*log(Pi/Po)/log(10);// signal Loss in dB
L=15;// in km
L1=30;// in km
ns=29;// number of attenuation
sp=sl/L;// signal Loss per km
sn=sp*L1;// signal attenuation for 30 km
sn1=sn+ns;// overall signal attenuation in dB
i_o=10^(sn1/20);// input output power ratio
printf("The signal Loss =%f dB", sl);
printf("\n The signal Loss per km=%f dB/km", sp);
printf("\n The overall signal attenuation=%f dB", sn1);
printf("\n The input output power ratio=%f", i_o);