//Exa 5.4
clc;
clear;
close;
//Given data :
l=50;//km
S=10000;//kVA
pf=0.8;//power factor
d=1.2*100;//cm
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
V=33000;//Volts
VR=V/sqrt(3);//V
f=50;//Hz
I=S*1000/sqrt(3)/V;//A
LineLoss=10/100*S*10^3*pf;//W
R=LineLoss/3/I^2;//ohm
rho=1.73*10^-6;//kg/m^3
a=rho*l*1000*100/R;//cm^2
r=sqrt(a/%pi);//cm
L=0.2*log(d/r/0.7788)*l;//mH
X=2*%pi*f*L*10^-3;//ohm
VS=VR+I*(R*cos_fi_r+X*sin_fi_r);//V
VSL=sqrt(3)*VS/1000;//kV
disp(VSL,"Line voltage at sending end(kV)");
pf_s=(VR*cos_fi_r+I*R)/VS;//lagging(sendinf end pf)
disp(pf_s,"Sending end pf(lagging) ");
Eta_T=S*pf/(S*pf+LineLoss/1000)*100;
disp(Eta_T,"Transmission Efficiency(%)");
Reg=(VSL-V/1000)/(V/1000)*100;//%
disp(Reg,"% Regulation");
