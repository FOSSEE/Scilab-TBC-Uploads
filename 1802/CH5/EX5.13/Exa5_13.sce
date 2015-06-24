//Exa 5.12
clc;
clear;
close;
//Given Data :
format('v',8);
R=1.5;//in ohm
X=4;//in ohm
VR=11*1000;//in volt
VRphase=VR/sqrt(3);//in volt/phase
P=6000;//in KVA(power delivered)
cos_fir=0.8;//unitless
I=P*1000/(3*VRphase);//in Ampere
Vs=VRphase+cos_fir*I*R+sqrt(1-cos_fir^2)*I*X;//in volt
Vs=Vs*sqrt(3);//in volt(not phase)
Reg=(Vs-VR)*100/VR;//in %
disp(Reg,"% Regulation : ");
losses=3*I^2*R/1000;//in Kw
Pr=P*cos_fir;//in wats(Receiving end power)
Psend=Pr+losses;//in watts
Eff=Pr*100/Psend;//unitless
disp(Eff,"Transmission efficiency (in %) :");