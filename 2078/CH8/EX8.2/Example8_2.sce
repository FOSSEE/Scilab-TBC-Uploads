//Exa 8.2
clc;
clear;
close;
format('v',6);
//Given data :
f=50;//HzdAP=AO+5;//m
l=200;//km
V=132*1000;//V
Load=28000;//kW
pf=0.85;//lagging power factor
r=5/1000;//radius of conductor in m
//From the figure given in question
AO=sqrt(4^2-2^2);//m
dAP=AO+5;//m
dAQ=dAP+1;//m
dBP=sqrt(5^2+2^2);//m
dBQ=sqrt(6^2+2^2);//m
MA=0.2*log(dAQ/dAP);//mH/km
MB=0.2*log(dBQ/dBP);//mH/km
MC=MB;//mH/km
M=MB-MA;//mH/km(MA,MB and Mc are displaced by 120 degree)
I=Load*1000/sqrt(3)/V/pf;//A
Vm=2*%pi*f*M*10^-3*I;//V/km
Vm1=Vm*l;//V(For whole route)
disp(Vm1,"Induced Voltage(For whole route) in Volts : ");
VA=V/sqrt(3);//V
VB=V/sqrt(3);//V
hA=20+AO;//m
VPA=VA*log((2*hA-dAP)/dAP)/log((2*hA-r)/r);//V
VPB=VB*log((2*hA-dBP)/dBP)/log((2*hA-r)/r);//V
VPC=VPB;//V
VP=VPB-VPA;//V
disp(VP,"Potential of telephone conductor in Volts :");
//Answer in the book is wrong due to little accuracy as compared to scilab.
