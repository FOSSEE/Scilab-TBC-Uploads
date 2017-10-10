//Exa 3.2
//To determine received signal power and SNR ratio.

clc;
clear all;

d=8000; //Distance between base station and mobile station
f=1.5*10^9;//in Hz 
lamda=0.2;  //in metres
Pt=10; //BS transmitted power in watts
Lo=8;   //Total system losses in dB
Nf=5;    //Mobile receiver noise figure in dB
T=290;   //temperature in degree kelvin
BW=1.25*10^6; //in Hz
Gb=8;  //in dB
Gm=0;   //in dB
Hb=30;  //in metres
Hm=3;   //in metres
B=1.38*10^-23; //Boltzmann's constant

//solution
Free_Lp=20*log10(Hm*Hb/d^2);
Pr=Free_Lp-Lo+Gm+Gb+Pt;  //in dBW
Te=T*(3.162-1);
Pn=B*(Te+T)*BW;
printf('Received signal power is %d dBW \n',10*log10(Pn));
SNR=Pr-10*log10(Pn);
printf(' SNR ratio is %d dB \n',round(SNR));
