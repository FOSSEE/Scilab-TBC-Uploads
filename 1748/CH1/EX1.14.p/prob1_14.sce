// Prob 1.14
clc;
clear;
close;
format('v',7);
// Given data
P1=600//Lightning load in KW
cosfi_1=1;
tanfi_1=tand(acosd(cosfi_1));
P2=800//Inductive load in KW
cosfi_2=.9;//lagging
tanfi_2=tand(acosd(cosfi_2));
P3=800//Capacitive load in KW
cosfi_3=.8;//leading
tanfi_3=-tand(acosd(cosfi_3));//taken -ve 
PA=1000;//in KW
cosfi_A=.85;//lagging pf
tanfi_A=tand(acosd(cosfi_A));
Pre=P1*tanfi_1;//in KVAR
Pri=P2*tanfi_2;//in KVAR
Prc=P3*tanfi_3;//in KVAR
P=P1+P2+P3;//in KW
Pr=Pre+Pri+Prc;//in KVAR
Pra=PA*tanfi_A;//in KVAR
PB=P-PA;//in KW
disp(PB,"Active power supplied by alternator B in KW : ");
Prb=Pr-Pra;//in KVAR
tanfi_B=Prb/PB;//unitless
cosfi_B=cosd(atand(tanfi_B));//unitless
disp(cosfi_B,"Power factor of alternator B(leading) : ");
