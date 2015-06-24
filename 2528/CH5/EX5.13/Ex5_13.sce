//Example5.13:"How much Ripples is seen in output"
//Page 164
clear;
clc;
PSRR=86;        //in dB
Vripple=0.5;       //in Volt
Psrr=10^(PSRR/20);
disp(Psrr,"PSRR ordinary value");
Vout=Vripple/Psrr;
disp("Vpp",Vout,"Vout_ripple ")
//result//
