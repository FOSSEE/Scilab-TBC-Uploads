//Exa 1.4
clc;
clear;
close;
//Given Data :
format('v',6);
R=15;//in ohm
X=40;//in ohm
VL=440;//in volt
//In delta connection : 
Vph=VL;//in volt
Zph=sqrt(R^2+X^2);//in ohm
Iph=Vph/Zph;//in Ampere
disp(Iph,"Phase Current(in A) :");
IL=Iph*sqrt(3);//in Ampere
disp(IL,"Linee Current(in A) :");