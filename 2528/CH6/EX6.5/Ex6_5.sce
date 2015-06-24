//Example6.5:"OTA use"
//Page 191
//figure 6.22
clear;
clc;
Vp=5;           //in V
Vm=-Vp;
Rcontrol=22000;     //In Ohm
Vd=0.7;         //in V
Iabc=(Vp-Vm-Vd)/Rcontrol;
disp("A",Iabc,"Iabc");
//Using voltage divider
Loss=470/(33000+470);
disp(Loss,"Loss");
Vpp=0.050;          //in V
Vinmax=Vpp/Loss;
disp("V",Vinmax,"Vinmax");
gm=0.010;           //in S
Iout=Vpp*gm;
disp("A",Iout,"Iout");
//maximum output
Rf=22000;           //in Ohm
Vout=Iout*Rf;
disp("V",Vout,"Vout");
//result//
