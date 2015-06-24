//Exa 5.3
clc;
clear;
close;
//Given data :
l=15;//km
P=5;//MW
V=11;//kV
f=50;//Hz
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
L=1.1;//mH/Km
VR=V*1000/sqrt(3);//V
I=P*1000/sqrt(3)/V/cos_fi_r;//A
LineLoss=12/100*P*10^6;//W
R=LineLoss/3/I^2;//ohm
X=2*%pi*f*L*10^-3*l;//ohm/phase
VS=VR+I*(R*cos_fi_r+X*sin_fi_r);//V
VSL=sqrt(3)*VS/1000;//KV
disp(VSL,"Line voltage at sending end(kV)");
Reg=(VSL-V)/V*100;//%
disp(Reg,"% Regulation");
