// Prob 1.11
clc;
clear;
close;
format('v',5);
// Given data
VL=400;//in volt
Output=10;//in HP
Output=Output*735.5;//in watts
m=3;//no. of phase
Xo=10;//in ohm/phase
Eff=85;//in %
Input=Output/(Eff/100);//in watts
//Formula : Input=sqrt(3)*VL*IL*cosfi
ILcosfi=Input/sqrt(3)/VL;//in Ampere
ILmin=ILcosfi;//in Ampere
disp(ILcosfi,"Minimum current by putting cosfi=1 in Ampere is :  ");
ER=ILmin*Xo;//in ohm
V=VL/sqrt(3);//supply voltage per phase in volt
E=sqrt(V^2+ER^2);//in volt
LineEMF=sqrt(3)*E;//in volt
disp(LineEMF,"Line Induced emf in volt : ");
