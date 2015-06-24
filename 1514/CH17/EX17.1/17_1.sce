//chapter 17
//example 17.1
//page 518
clear;
clc ;
//given
//dc load line
Vcc=13;//supply voltage
R1=4.7;R2=3.7;RE=1;
Rpy=40;
N1=74;N2=14;
Rl=56;
//plot point A(Vce,Ic)=(Vcc,0)
VB=Vcc*R2/(R1+R2);
VE=VB;
VBE=VB-0.7;
IE=VE/RE;
IC=IE;
VCE=Vcc-IC*(Rpy+RE);//plot point Q(VCE,IC)=(8,5)

VCE=[13,8];
IC=[0,5];
plot(VCE,IC)
xtitle('dc load line','VCE in V','IC in mA')

//ac load line
Rl'==(N1/N2)^2*Rl;
//total ac load
Rlac=(Rpy+Rl')/1000;
deltaIC=5;
deltaVCE=deltaIC*Rlac;
//point B(VCE,IC)=(16,0)
VCE=[8,16];
IC=[5,0];
figure,plot(VCE,IC,'r-.');
xtitle('ac load line','VCE in V','IC in mA')
