//Chapter 12
//page no 492
//given
clc;
clear all;
OBR=-40;            //in dB
//y=Pref/Pin
y=10^(OBR/10);
printf("\n Prefl = %0.2f percent Pin",y*100);
