//Ex:10.4
clc;
clear;
close;
Pi=-2.5;// mean optical power launched into the fiber in dBm
Po=-45;// mean output optical power available at the receiver in dBm
a_fc=0.35;// fider cable loss in dB/km
aj=0.1;// splice loss in db/km
a_cr=1;// connector losses
Ma=6;// safety margin in dB
L=(Pi-Po-a_cr-Ma)/(a_fc+aj);// length in km when system operating at 25 Mbps
Po1=-35;// mean output optical power available at the receiver in dBm
L1=(Pi-Po1-a_cr-Ma)/(a_fc+aj);// length in km when system operating at 350 Mbps
printf("The length when system operating at 25 Mbps =%f km", L);
printf("\n The length when system operating at 350 Mbps =%f km", L1);