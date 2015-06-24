clc();
clear;
//To determine pi/p0
S=2.3;                    //Signal attenuation per km
l=4;                      //length in km
S=S*l;                    //signal attenuation for 4km in dB
//S=10*log(pi/po)(or)pi/po=10^(S/10)
P=10^(S/10)               //mean optical power launched into fibre(pi)/mean optical power at fibre output (po)
printf("pi/po=%f",P);
