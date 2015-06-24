//Exa 5.2
clc;
clear;
close;
//Given data :
R=0.4;//ohm
X=0.4;//ohm 
P=2000;//kVA
pf=0.8;//power factor
VL=3000;//V
VR=VL/sqrt(3);//V
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
I=P*1000/3/VR;//A
VS=VR+I*(R*cos_fi_r+X*sin_fi_r);//V
Reg=(VS-VR)/VR*100;//%
disp(Reg,"% Regulation");
LineLoss=3*I^2*R/1000;//kW
Pout=P*cos_fi_r;//kW
Eta_T=Pout*100/(Pout+LineLoss);//%
disp(Eta_T,"Transmission Efficiency(%)");
