//Exa 5.12
clc;
clear;
close;
//Given Data :
format('v',8);
R=2;//in ohm
X=3;//in ohm
VR=10*1000;//in volt
P=1000*10^3;//in watt(power delivered)
cos_fir=0.8;//unitless
I=P/(VR*cos_fir);//in Ampere
Vs=sqrt((VR*cos_fir+I*R)^2+(VR*sqrt(1-cos_fir^2)+I*X)^2);//in volt
Reg=(Vs-VR)*100/VR;//in %
disp(Reg,"% Regulation : ");
losses=I^2*R;//in watts
Pr=P*cos_fir;//in wats(Receiving end power)
Psend=Pr+losses;//in watts
Eff=Pr*100/Psend;//unitless
disp(Eff,"Transmission efficiency (in %) :");