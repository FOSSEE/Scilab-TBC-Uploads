clear;
clc;
V_d=(200+200)*10^3;
P=1000*10^6;
I_d=P/V_d;
//each thristor conducts for 120deg for a periodicity of 360deg
printf("rms current rating of thyristor=%.2f A",I_d*sqrt(120/360));
a=0;
V_d=200*10^3;
V_ml=V_d*%pi/(3*cosd(a));
printf("\npeak reverse voltage across each thyristor=%.2f kV",V_ml/2/1000);