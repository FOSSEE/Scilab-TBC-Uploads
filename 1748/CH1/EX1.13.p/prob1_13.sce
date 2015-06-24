// Prob 1.13
clc;
clear;
close;
format('v',7);
// Given data
V=2300;//in volt
P=1200//in KW
IA=200;//in Ampere 
cosfi_a=0.9;//lagging power factor
PA=V*IA*cosfi_a*10^-3;//in KW
fi_a=acosd(cosfi_a);//in degree
Pra=PA*tand(fi_a);//in KVAR
Pr=0;//because pf is unity
Prb=Pr-Pra ;//in KVAR
PB=P-PA;//in KW
disp(PB,"Power of alternator B in KW : ");
tanfi_b=Prb/PB;//unitless
cosfi_b=cosd(atand(tanfi_b));//leading power factor
disp(cosfi_b,"Leading power factor of alternator B : ");
IB=PB*10^3/V/cosfi_b;//in Ampere
disp(IB,"Current in alternator B in Ampere : ");
