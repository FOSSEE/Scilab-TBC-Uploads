//Exa 2.12
clc;
clear;
close;
//Given data
Beta=100;//unitless
VCC=6;//in volt
RB=530;//in kOhm
RC=2;//in kOhm
VBE=0.7;//in volt(For Si)
//Part (i)
IC1=0;//in A
VCE1=VCC-IC1*RC;//in volt
//If VCE=0;//in volt
VCE2=0;//in volt
IC2=VCC/RC;//in Ampere
title('DC load line');
xlabel('VCE(in volts)');
ylabel('IC(in mA)');
plot([VCE1,IC1],[VCE2,IC2]);//DC load line
//Formula : VCC=VBE+IB*RB
IB=(VCC-VBE)/(RB*10^3);//in Ampere
IC=Beta*IB;//in Ampere
VCE=VCC-IC*RC*10^3;//in volt
disp("Q point coordinates are :");
disp("IC="+string(IC*10^3)+" mA and VCE="+string(VCE)+" Volt.");
