//Exa 5.10
clc;
clear;
close;
//Given Data :
format('v',8);
Pt=4000*10^3;//in watt(power to be transmitted)
VR=11000;//in volt
cos_fir=0.9;//unitless
R=1;//in ohm
X=2.5;//in ohm
I=Pt/VR;//in Ampere
Vs=VR+I*R*cos_fir+I*X*sqrt(1-cos_fir^2);//in volt
disp(Vs,"Sending end voltage(in volts) : ");
Reg=(Vs-VR)*100/VR;//in %
disp(Reg,"% Regulation : ");
cos_fis=(VR*cos_fir+I*R)/Vs;//unitless
disp(cos_fis,"Sending end pf(lag) : ");
losses=I^2*R;//in watts
Pr=Pt*cos_fir;//in wats(Receiving end power)
Psend=Pr+losses;//in watts
Eff=Pr*100/Psend;//unitless
disp(Eff,"Transmission efficiency (in %) :");