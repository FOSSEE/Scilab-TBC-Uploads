//Ex 1.3
clc;clear;close;
VDD=1.8;//V
Vt=0.6;//V
mpCox=100;//micro A/V^2
IREF=80;//micro A
VOmax=1.6;//V
VSG=VDD-VOmax+Vt;//V
VGS=-VSG;//V
VS=VDD;//V
VG=VGS+VS;//V
R=VG/(IREF*10^-6);//ohm
ID=IREF;//micro A
WbyL=2*ID*10^-6/(mpCox*10^-6)/(VGS+Vt)^2;//unitless
disp(VGS,"Value of VGS(V) : ");
disp(VG,"Value of VG(V) : ");
disp(R/1000,"Value of R(kohm) : ");
disp(WbyL,"W/L ratio : ");
