//Exa 5.7
clc;
clear;
close;
//Given data :
R=5;//ohm/phase
X=20;//ohm/phase
VSL=46.85;//kV
VRL=33;//kV
VRL=VRL*1000;//v
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
VR=VRL/sqrt(3);//V
I=(VSL*1000/sqrt(3)-VR)/(R*cos_fi_r+X*sin_fi_r);//A
Pout=sqrt(3)*VRL*I*pf/1000;//kW
disp(Pout,"Power output(kW)");
cosfi_s=(VR*pf+I*R)/(VSL*1000/sqrt(3));//power factor
disp(cosfi_s,"Power factor at sending end(lagging)");
