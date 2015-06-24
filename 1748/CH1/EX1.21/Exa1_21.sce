//Exa 1.21
clc;
clear;
close;
//given data
format('v',7);
V=6600;//in Volts
KW=6000;//in KWatts
pf=0.8;//unitless
cos_fi=pf;//unitless
Eff=90;//in %
//Part (a) : 
KVA=KW/cos_fi;//in KVAR
disp("KVA rating of the alternator : "+string(KVA)+" KVA");
//Part (b) : 
TotalRating=KVA;//in KVA
VA=TotalRating*1000;//in VA
I=VA/(sqrt(3)*KW);//in Ampere
disp(I,"Current Rating in Ampere : ");
//Part (c) :
Input=KW/(Eff/100);//in KW
disp(Input,"Power Input(in KW) :");
Input=Input*1000/735.5;//in hp
disp(Input,"Power Input(in hp) :");