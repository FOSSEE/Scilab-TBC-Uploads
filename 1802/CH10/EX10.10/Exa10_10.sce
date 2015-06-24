//Exa 10.10
clc;
clear;
close;
//Given Data :
format('v',7);
P=1500;//in KW
cosfi_1=0.75;//powerfactor
tanfi_1=tand(acosd(cosfi_1));//unitless
Pr1=P*tanfi_1;//in KVAR
Pm=150;//in KW
P=P+Pm;//in KW
cosfi_2=0.9;//unitless
tanfi_2=tand(acosd(cosfi_2));//unitless
Pr=P*tanfi_2;//in KVAR
Prm=Pr-Pr1;//in KVAR
Pam=sqrt(Pm^2+Prm^2)
cosfi=Pm/Pam;//leading PF
disp(cosfi,"P.F. of synchronous motor(leading) :");