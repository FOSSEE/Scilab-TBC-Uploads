//Exa 5.11
clc;
clear;
close;
//Given Data :
format('v',8);
L=20;//in Km(length of the line)
Pdev=3000*10^3;//in watt(power delivered)
cos_fir=0.8;//unitless
VR=11*1000;//in volt
R=0.15*L;//in ohm
X=0.4*L;//in ohm
I=Pdev/VR;//in Ampere
Vs=VR+I*R*cos_fir-I*X*sqrt(1-cos_fir^2);//in volt
disp(Vs,"Sending end voltage(in volts) : ");
Reg=(VR-Vs)*100/VR;//in %
disp(Reg,"% Regulation : ");
cos_fis=(VR*cos_fir+I*R)/Vs;//unitless
disp(cos_fis,"Sending end pf(lag) : ");
losses=I^2*R;//in watts
Pr=Pdev*cos_fir;//in wats(Receiving end power)
Psend=Pr+losses;//in watts
Eff=Pr*100/Psend;//unitless
disp(Eff,"Transmission efficiency (in %) :");