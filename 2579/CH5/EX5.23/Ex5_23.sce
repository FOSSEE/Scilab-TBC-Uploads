//Ex:5.23
clc;
clear;
close;
Gt=20;// transmeter gain in dB
Gr=20;// receiver gain in dB
d=40;// distance in km
f=600;// frequency in MHz
Ls=32.45+20*log(f)/log(10)+20*log(d)/log(10);// loss in dB
at=Gt+Gr-Ls;// attenuation in dB
printf("The attenuation = %f dB", at);
printf("\n Negative sign shown attenuation");