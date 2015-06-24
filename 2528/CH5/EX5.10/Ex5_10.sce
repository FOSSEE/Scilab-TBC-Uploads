
//clear//
//Example5.10:"Output voltage""
//Page 158
//figure 5.24
clear;
clc;
Rf=20000;       // in Ohm
Ri=5000;        //in ohm
Av=-Rf/Ri;
Vin=3*10^-3;        //in Volt 
Vout=Av*Vin;
disp("V",Vout,"Vout");

//411 typical apecs
Vos=0.8*10^-3;      //in Volt
Ios=25*10^-12;       //in Amp
Ib=50*10^-12;       //in Amp
Anoise=1+Rf/Ri;
Roff=0;
Vout=(Vos*Anoise)+(Ib*Roff*Anoise+Ib*Rf);
disp("V",Vout,"Vout");
//Result
