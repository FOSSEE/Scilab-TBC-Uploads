//Exa 5.1
clc;
clear;
close;
//Given data :
P=1100;//kW
VR=11*1000;//V
pf=0.8;//power factor
R=2;//ohm
X=3;//ohm
I=P*1000/VR/pf;//A
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
VS=sqrt((VR*cos_fi_r+I*R)^2+(VR*sin_fi_r+I*X)^2);//V
disp(VS,"Voltage at sending end(V)");
Reg=(VS-VR)/VR*100;//%
disp(Reg,"% Regulation");
LineLoss=I^2*R/1000;//kW
Eta_T=P*100/(P+LineLoss);//%
disp(Eta_T,"Transmission Efficiency(%)");
