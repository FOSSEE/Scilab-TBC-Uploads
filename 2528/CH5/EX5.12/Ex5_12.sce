//Example5.12:"Output "
//Page 163
clear;
clc;
Av=20;          //in dB
Vin=-60;        //in dBV
CMRR=-90;       //in dB
//for differential input
Vout=Av+Vin;
disp("dBV",Vout,"Vout for differential mode input");
//for common mode input
Vout1=Vout+CMRR;
disp("dBV",Vout1,"Vout for common mode signal");
//This signal is so small that it is overshadowed by noise
