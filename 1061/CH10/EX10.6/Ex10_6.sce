//Ex:10.6
clc;
clear;
close;
Lc=1;// connector loss in db
Ls=5;// star coupler insertion loss in dB
af=2;// fider loss in dB
Ps=-14;// transmitted power in dBm
Pr=-49;// receiver sensitivity in dBm
sm=6;// system margin in dB
N=16;
L=(Ps-Pr-Ls-4*Lc-(10*log(N))/log(10)-sm)/(2*af);//  max transmission length in km when transmission star coupler is used
N1=32;
L1=(Ps-Pr-Ls-4*Lc-(10*log(N1))/log(10)-sm)/(2*af);// max transmission length in km when reflection star coupler is used
printf("The max transmission length when transmission star coupler is used =%f km", L);
printf("\n The max transmission length when reflection star coupler is used =%f km", L1);