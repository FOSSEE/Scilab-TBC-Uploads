//Exa:1.18
clc;
clear;
close;
P=10*7355;//in watts
V=400;//in volts
pf=0.8//power factor
Eff=0.9;//efficiency in per unit
I_f=P/(sqrt(3)*V*pf*Eff);//in amperes
I_sc=7.2;//in amperes
I_sc1=I_sc*400/160;//in amperes
I_st=I_sc1/3;//Starting current (in amperes)
I_r=I_st/I_f;
disp(I_r,'Ratio of starting current to full load current=')