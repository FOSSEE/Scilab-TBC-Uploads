//Ex 1.1
clc;clear;close;
VDD=1.8;//V
IREF=50;//micro A
IO=IREF;//micro A
L=0.5;//micro m
W=5;//micro m
Vt=0.5;//V
Kn_dash=250;//micro A/V^2
VGS=sqrt(IO/(1/2*Kn_dash*(W/L)))+Vt;//V
disp(VGS,"Value of VGS(V) : ");
R=(VDD-VGS)/(IREF*10^-6);//ohm
disp(R/1000,"Value of R(kohm) : ");
VDS2=VGS-Vt;//V
VO=VDS2;//V
disp(VO,"Lowest value of VO(V) : ");
