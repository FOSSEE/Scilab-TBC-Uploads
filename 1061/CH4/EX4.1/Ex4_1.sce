//Ex:4.1
clc;
clear;
close;
Pi=100*10^-6;// mean optical power in watt
Po=2*10^-6;// output mean power in watt
L=6;// length in km
L1=8;// length in km
as=10*log(Pi/Po)/log(10);// signal attenuation in dB
as1=as/L;// signal attenuation per km
Li=as1*L1;// Loss incurred along 8 km
Ls=7;// Loss due to splice in dB
as2=Li+Ls;// overall signal attenuation in dB
As2=29.4;// aprox. overall signal attenuation in dB
Pio=10^(As2/10);// i/p o/p power ratio
printf("The signal attenuation =%f dB", as);
printf("\n The signal attenuation per km =%f dB/km", as1);
printf("\n The trgth =%f km", Li);
printf("\n The overall signal attenuation =%f dB", as2);
printf("\n The i/p o/p power ratio =%f ", Pio);