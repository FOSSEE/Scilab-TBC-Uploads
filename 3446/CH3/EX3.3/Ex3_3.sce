//Exa 3.3
//To determine received power and allowable Path loss.

clc;
clear all;

d=3*1000;//in metres
Y=4;// path loss exponent
Pt=4;  //Transmitted power in watts
f=1800*10^6;//in Hz
Shadow=10.5;  //in dB
d0=100;//in metres
P0=-32;   //in dBm

//solution
disp("Using equation 3.11 and including shadow effect we get")
Pr=P0+10*Y*log10(d0/d)+Shadow;
printf(' Received power is %.1f dBm \n',Pr);
path_loss=10*log10(Pt*1000)-Pr;
printf(' Allowable path loss is %.1f dB \n ',path_loss);
