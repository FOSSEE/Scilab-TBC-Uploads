//Example No. 3.16.1
clc;
clear;
close;
format('v',9);

Do_dB=20;//dB
f=10;//GHz
Wi=2*10^-3;//W/m²
c=3*10^8;//m/s
lambda=c/(f*10^9);//m
Do=10^(Do_dB/10);//unitless
Aem=lambda^2/(4*%pi)*Do;//m²
disp(Aem,"Maximum effective aperture in m² : ");
Pr=Aem*Wi;//W
disp(Pr*10^6,"Maximum received power in µW : ");
