//Example 7.7(a)

clear;

clc;

R1=100*10^3;

R2=200*10^3;

R3=68*10^3;

enw=20*10^(-9);

fce=200;

ft=1*10^6;

inw=0.5*10^(-12);

fci=2*10^3;

Rp=(R1*R2)/(R1+R2);

Ano=1+(R2/R1);

fB=ft/Ano;

fL=0.1;

Enoe=Ano*enw*sqrt([{fce*log(fB/fL)}+{1.57*fB}-fL]);

Enoi=Ano*[{(R3^2)+(Rp^2)}^(1/2)]*inw*([(fci*log(fB/fL))+(1.57*fB)]^(1/2));

k=1.38*10^(-23);

T=25+273;//Room temperature in Kelvin

EnoR=Ano*[{(4*k*T)*(R3+Rp)*1.57*fB}^(1/2)];

Eno=sqrt((Enoe^2)+(Enoi^2)+(EnoR^2));

printf("RMS Output Noise Voltage=%.f uV",Eno*10^6);

printf("\nPeak to Peak Noise Voltage=%.2f mV",6.6*Eno*10^3);