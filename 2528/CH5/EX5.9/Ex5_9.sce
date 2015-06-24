//clear//
//Example5.9:"Typical offset voltage""
//Page 157
//figure 5.9
clear;
clc;
Rf=10000;       // in Ohm
Ri=1000;        //in ohm
Roff=0;         //in ohm
Anoise=1+Rf/Ri;
disp(Anoise,"Anoise");
Vos=0.5*10^-3;      //in Volt
Ios=10*10^-9;       //in Amp
Ib=800*10^-9;       //in Amp
Vout=(Vos*Anoise)+(Ib*Roff*Anoise+Ib*Rf);
disp("V",Vout,"Vout");

Roff=Ri*Rf/(Rf+Ri);
Vout=(Vos*Anoise)+(Ios*Rf);
disp("V",Vout,"Vout_offset");
//result
