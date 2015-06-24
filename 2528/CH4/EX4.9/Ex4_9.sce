clc;
clear;
close;
//pagec no 107
//Figure 4.13
Ri=20*10^3;     //In Ohm
Vin=0.4;        //In Volt
Rl=1*103;//In ohm
gm=1/Ri;        //unit-micro*Siemens
Iload=gm*Vin;
disp("A",Iload,"Load current is");
//maximum current is 20microAmp in Op Amp
Vout=(Ri+Rl)*Iload;
disp("V",Vout,"V max ");
